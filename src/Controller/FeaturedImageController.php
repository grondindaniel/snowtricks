<?php

namespace App\Controller;

use App\Entity\Trick;
use App\Form\TrickFeaturedType;
use App\Repository\TrickRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;

class FeaturedImageController extends AbstractController
{
    /**
     * @Route("/featured/image/{id}", name="featured_image")
     */
    public function index(Request $request, EntityManagerInterface $manager, Trick $trick, $id, TrickRepository $trickRepository)
    {
        $form = $this->createForm(TrickFeaturedType::class, $trick);
        $form->handleRequest($request);
        if($form->isSubmitted() && $form->isValid())
        {
            $trick = $form->getData();
            $picture = $trick->getFeaturedImage();
            $file = $picture->getFile();
            $fileName =  md5(uniqid()).'.'.$file->guessExtension();
            $file->move($this->getParameter('images_directory'), $fileName);
            $picture->setName($fileName);
            $manager->flush();
            $this->addFlash('successFeaturedImage', 'Cool, your featured image is now updated !');
            return $this->redirectToRoute('home');

        }
        $trickId = $trickRepository->findOneBy(array('id'=>$id));
        return $this->render('featured_image/index.html.twig', array('trickId'=>$trickId,'form'=>$form->createView()));
    }
}
