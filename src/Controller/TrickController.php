<?php

namespace App\Controller;

use App\Entity\Image;
use App\Form\TrickType;
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
            $manager->persist($trick);
            $manager->flush();

        }
        return $this->render('trick/add.html.twig', array('form'=>$form->createView()));
    }
}
