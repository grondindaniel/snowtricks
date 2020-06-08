<?php

namespace App\Form;

use App\Entity\Trick;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\CollectionType;
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
                   'Les grabs'=>'The grabs',
                   'Les rotations'=>'The rotations',
                   'Les flips'=>'The flips',
                   'Les slides'=>'The slides',
                   'Les one foot tricks'=>'The one foot tricks'
                )
            ))
            ->add('images',FileType::class, array(
                'label'=>'Select one or more images',
                'mapped'=>false,
                'required' => false,
                'attr' => array('multiple'=>true),
                'multiple'=>true,
                'data_class'=>null))
            ->add('videos', CollectionType::class, array(
                'entry_type'=> VideoType::class,
                'allow_add'=> true,
                'prototype' => true,
                'by_reference'=>false,
                'label'=>false))
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Trick::class,
        ]);
    }
}
