<?php

namespace App\Controller;

use App\Entity\User;
use App\Form\UserProfilType;
use App\Repository\UserRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;

class ProfilImageController extends AbstractController
{
    /**
     * @Route("/profil/image/{id}", name="profil_image")
     */
    public function index(Request $request, EntityManagerInterface $manager, User $user, UserRepository $userRepository, $id)
    {
        $form = $this->createForm(UserProfilType::class, $user);
        $form->handleRequest($request);
        if($form->isSubmitted() && $form->isValid())
        {

            $user = $form->getData();
            $picture = $user->getImageProfil();
            $file = $picture->getFile();
            $fileName =  md5(uniqid()).'.'.$file->guessExtension();
            $file->move($this->getParameter('images_directory'), $fileName);
            $picture->setName($fileName);
            $manager->flush();
            return $this->redirectToRoute('home');

        }
        $username = $userRepository->findOneBy(array('id'=>$id));
        return $this->render('profil_image/index.html.twig', array('username'=>$username,'form'=>$form->createView()));
    }
}
