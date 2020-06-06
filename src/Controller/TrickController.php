<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class TrickController extends AbstractController
{
    /**
     * @Route("/trick", name="add/trick")
     */
    public function index()
    {
        return $this->render('trick/add.html.twig', array());
    }
}
