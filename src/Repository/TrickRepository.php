<?php

namespace App\Repository;

use App\Entity\Trick;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Trick|null find($id, $lockMode = null, $lockVersion = null)
 * @method Trick|null findOneBy(array $criteria, array $orderBy = null)
 * @method Trick[]    findAll()
 * @method Trick[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class TrickRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Trick::class);
    }

    /**
     * @return Trick[] Returns an array of ProductEntity objects
     */

    public function trickHome()
    {
        return $this->createQueryBuilder('p')
            ->orderBy('p.id', 'DESC')
            ->getQuery()
            ->getResult()
            ;
    }

    public function CommentAndProfil($id)
    {

        $q = "select comment.content, comment.author,comment.trick, comment.created_at, user.username, image_profil.name, trick.id from trick
INNER JOIN comment ON
trick.id = comment.trick
inner join user on
comment.author = user.username
inner join image_profil on
image_profil.id = user.image_profil_id
";

        $stmt = $this->getEntityManager()->getConnection()->prepare($q);
        $stmt->execute([]);

        return $stmt->fetchAll();

    }

    public function showFeaturedImage()
    {
        $q = "select trick.featured_image_id, trick.id, featured_image.name from trick
inner join featured_image on
trick.featured_image_id = featured_image.id;
";

        $stmt = $this->getEntityManager()->getConnection()->prepare($q);
        $stmt->execute([]);

        return $stmt->fetchAll();
    }

    /*
    public function findOneBySomeField($value): ?Trick
    {
        return $this->createQueryBuilder('t')
            ->andWhere('t.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
