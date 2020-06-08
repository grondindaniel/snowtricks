<?php

namespace App\Controller;

use App\Entity\Image;
use App\Entity\Trick;
use App\Form\CommentType;
use App\Form\TrickType;
use App\Repository\CommentRepository;
use App\Repository\ImageRepository;
use App\Repository\TrickRepository;
use App\Repository\VideoRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;

class TrickController extends AbstractController
{
    /**
     * @Route("/trick", name="add/trick")
     */
    public function index(TrickType $trickType, Request $request, EntityManagerInterface $manager)
    {
        $form = $this->createForm(TrickType::class);
        $form->handleRequest($request);



        if($form->isSubmitted() && $form->isValid())
        {
            $images = $form->get('images')->getData();
            $trick = $form->getData();

            foreach($images as $image)
            {
                $fichier = md5(uniqid()).'.'.$image->guessExtension();
                $image->move(
                    $this->getParameter('images_directory'),
                    $fichier
                );
                $img = new Image();
                $img->setName($fichier);
                $trick->addImage($img);
            }
            $user = $this->getUser();
            $creator = $user->getUsername();
            $trick->setCreator($creator);
            $manager->persist($trick);
            $manager->flush();

            return $this->redirectToRoute('home');

        }
        return $this->render('trick/add.html.twig', array('form'=>$form->createView()));
    }

    /**
     * @Route("/show/{id}", name="show")
     * @param TrickRepository $trickRepository
     * @param $id
     * @param ImageRepository $imageRepository
     * @param VideoRepository $videoRepository
     * @param CommentType $commentType
     * @param EntityManagerInterface $manager
     * @param Request $request
     * @param CommentRepository $commentRepository
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function show(TrickRepository $trickRepository, $id, ImageRepository $imageRepository, VideoRepository $videoRepository, EntityManagerInterface $manager, Request $request, CommentRepository $commentRepository)
    {
        $form = $this->createForm(CommentType::class);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid())
        {
            $comment = $form->getData();
            $user = $this->getUser();
            $author = $user->getUsername();
            $comment->setAuthor($author);
            $comment->setTrick($id);
            $manager->persist($comment);
            $manager->flush();
        }
        $comments = $commentRepository->findBy(array('trick'=>$id));
        $tricks = $trickRepository->findBy(array('id'=>$id));
        $images = $imageRepository->findBy(array('trick'=>$id));
        $video = $videoRepository->findBy(array('trick'=>$id));
        return $this->render('trick/show.html.twig', array('trick'=>$tricks,'comments'=>$comments, 'images'=>$images, 'videos'=>$video,'form'=>$form->createView()));
    }



    /**
     * @Route("remove/{id}", name="remove")
     */
    public function remove(EntityManagerInterface $manager, Trick $trick)
    {
        $manager->remove($trick);
        $manager->flush();
        return $this->redirectToRoute('home');
    }


}
