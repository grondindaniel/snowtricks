<?php

namespace App\Controller;

use App\Repository\TrickRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class HomeController extends AbstractController
{
    /**
     * @Route("/", name="home")
     */
    public function index(TrickRepository $trickRepository)
    {
        $tricks = $trickRepository->trickHome();
        $featuredImage = $trickRepository->showFeaturedImage();
        return $this->render('home/index.html.twig', array('featuredImage'=>$featuredImage,'tricks'=>$tricks));
    }
}
