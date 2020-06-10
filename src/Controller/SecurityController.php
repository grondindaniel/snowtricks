<?php

namespace App\Controller;

use App\Entity\User;
use App\Form\ResetPasswordType;
use App\Repository\UserRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Mailer\MailerInterface;
use Symfony\Component\Mime\Email;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Routing\Generator\UrlGeneratorInterface;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;
use Symfony\Component\Security\Csrf\TokenGenerator\TokenGeneratorInterface;
use Symfony\Component\Security\Http\Authentication\AuthenticationUtils;

class SecurityController extends AbstractController
{
    /**
     * @Route("/login", name="app_login")
     */
    public function login(AuthenticationUtils $authenticationUtils): Response
    {
        $error = $authenticationUtils->getLastAuthenticationError();
        $lastUsername = $authenticationUtils->getLastUsername();
        return $this->render('security/login.html.twig', ['last_username' => $lastUsername, 'error' => $error]);
    }

    /**
     * @Route("/logout", name="app_logout")
     */
    public function logout()
    {
        throw new \LogicException('This method can be blank - it will be intercepted by the logout key on your firewall.');
    }

    /**
     * @Route("/forgotten-pass", name="app_forgotten_password")
     */
    public function oubliPass(Request $request, UserRepository $user, MailerInterface $mailer, TokenGeneratorInterface  $tokenGenerator, EntityManagerInterface $manager)
    {
        $form = $this->createForm(ResetPasswordType::class);
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $username = $form->getData();
            $user = $user->findOneBy(array('username'=>$username));
            $token = $tokenGenerator->generateToken();
            $user->setToken($token);
            $manager->persist($user);
            $manager->flush();
            $url = $this->generateUrl('app_reset_password', array('token'=>$token), UrlGeneratorInterface::ABSOLUTE_URL);
            $email = (new Email())
                ->From("daniel.grondin@ac-nantes.fr")
                ->To($user->getEmail())
                ->html('<p>Please clic on link below</p>'.$url);

            $mailer->send($email);
            ;
            $this->addFlash('message', 'Email send !');
            return $this->redirectToRoute('app_login');
        }

        return $this->render('security/forgotten_password.html.twig',['usernameForm' => $form->createView()]);
    }
    /**
     * @Route("/reset_pass/{token}", name="app_reset_password")
     */
    public function resetPassword(Request $request, string $token,User $user ,UserPasswordEncoderInterface $passwordEncoder, EntityManagerInterface $manager, UserRepository $userRepository)
    {

        $user = $userRepository->findOneBy(['token' => $token]);
        if ($user === null) {
            $this->addFlash('danger', 'Token Inconnu');
            return $this->redirectToRoute('app_login');
        }

        if ($request->isMethod('POST')) {
            $user->setPassword($passwordEncoder->encodePassword($user, $request->request->get('password')));
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($user);
            $entityManager->flush();
            $this->addFlash('message', 'Password update');
            return $this->redirectToRoute('app_login');
        }else
        {

            return $this->render('security/reset_password.html.twig', ['token' => $token]);
        }

    }

}
