<?php

namespace App\Models;

class Post 
{
    private static $blog_posts = [
        [
            "title" => "Judul Post Pertama",
            "slug" => "judul-post-pertama",
            "author" => "Abu Abdirohman",
            "body" => "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ipsam esse ratione nobis voluptas praesentium quia ut fugit eligendi sapiente. Commodi, ex delectus perspiciatis atque officiis obcaecati consequatur nostrum tempora sint, maiores dolor ipsa ea aperiam in. Natus suscipit maiores sequi harum ratione cumque deleniti? Facere exercitationem autem ducimus, eos ab laudantium labore reprehenderit atque ullam aliquam pariatur distinctio blanditiis vel odio commodi magnam sequi! Nemo quam alias a ad commodi sapiente voluptatibus consequuntur distinctio tenetur cumque quidem molestiae, excepturi repellendus?"
        ],
        [
            "title" => "Judul Post Kedua",
            "slug" => "judul-post-kedua",
            "author" => "Nursita",
            "body" => "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ipsam esse ratione nobis voluptas praesentium quia ut fugit eligendi sapiente. Commodi, ex delectus perspiciatis atque officiis obcaecati consequatur nostrum tempora sint, maiores dolor ipsa ea aperiam in. Natus suscipit maiores sequi harum ratione Commodi, ex delectus perspiciatis atque officiis obcaecati consequatur nostrum tempora sint, maiores dolor ipsa ea aperiam in. Natus suscipit maiores sequi harum ratione cumque deleniti? Facere exercitationem autem ducimus, eos ab laudantium labore reprehenderit atque ullam aliquam pariatur distinctio blanditiis vel "
        ]
    ];

    public static function all()
    {
        return collect(self::$blog_posts);
    }

    public static function find($slug)
    {
        $posts = static::all();

        return $posts->firstWhere('slug', $slug);
    }

}