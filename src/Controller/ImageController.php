<?php

namespace App\Controller;

use App\Entity\Image;
use App\Form\ImageType;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;

class ImageController extends AbstractController
{
    /**
     * @Route("/image/{id}", name="image")
     */
    public function index(Request $request, EntityManagerInterface $manager, Image $image)
    {
        $form = $this->createForm(ImageType::class, $image);
        $form->handleRequest($request);
        if($form->isSubmitted() && $form->isValid())
        {
            $image = $form->getData();
            $file = $image->getFile();
            $fileName =  md5(uniqid()).'.'.$file->guessExtension();
            $file->move($this->getParameter('images_directory'), $fileName);
            $image->setName($fileName);
            $manager->flush();
            return $this->redirectToRoute('home');

        }
        $id = $image->getId();
        return $this->render('image/index.html.twig', array('id'=>$id,'form'=>$form->createView()));
    }
}

