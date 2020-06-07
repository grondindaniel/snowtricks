<?php

namespace App\Form;

use App\Entity\Trick;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class TrickType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('name', TextType::class)
            ->add('description', TextareaType::class)
            ->add('list', ChoiceType::class, array(
                'choices'=>array(
                   'Group 1'=>'g1',
                   'Group 2'=>'g2',
                   'Group 3'=>'g3',
                   'Group 4'=>'g4',
                   'Group 5'=>'g5'
                )
            ))
            ->add('images',FileType::class, array(
                'label'=>'Select one or more images',
                'mapped'=>false,
                'required' => false,
                'attr' => array('multiple'=>true),
                'multiple'=>true,
                'data_class'=>null))
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Trick::class,
        ]);
    }
}
