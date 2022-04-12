<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Category;
use App\Models\Post;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();
        User::create([
            'name' => 'Abu Abdirohman',
            'email' => 'abuabdirohman4@gmail.com',
            'password' => bcrypt('12345')
        ]);

        User::create([
            'name' => 'Azati Hanani',
            'email' => 'hananimania@gmail.com',
            'password' => bcrypt('12345')
        ]);

        Category::create([
            'name' => 'Programming',
            'slug' => 'programming'
        ]);

        Category::create([
            'name' => 'Web Design',
            'slug' => 'web-design'
        ]);

        Category::create([
            'name' => 'Personal',
            'slug' => 'personal'
        ]);

        Post::create([
            'title' => 'Judul Ke Satu',
            'slug' => 'judul-ke-satu',
            'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Impedit, pariatur?',
            'body' => '<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Eveniet asperiores ratione quas deserunt, aspernatur corporis deleniti commodi dicta natus assumenda?</p>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. At voluptates animi assumenda aliquid dolore provident consectetur architecto excepturi, magni dignissimos nisi necessitatibus iusto ducimus ipsum culpa nemo autem soluta ex consequuntur modi mollitia inventore impedit.</p>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Magni aliquid impedit reiciendis eum, corrupti nemo.</p>',
            'category_id' => 1,
            'user_id' => 2
        ]);

        Post::create([
            'title' => 'Judul Ke Dua',
            'slug' => 'judul-ke-dua',
            'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Impedit, pariatur?',
            'body' => '<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Eveniet asperiores ratione quas deserunt, aspernatur corporis deleniti commodi dicta natus assumenda?</p>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. At voluptates animi assumenda aliquid dolore provident consectetur architecto excepturi, magni dignissimos nisi necessitatibus iusto ducimus ipsum culpa nemo autem soluta ex consequuntur modi mollitia inventore impedit.</p>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Magni aliquid impedit reiciendis eum, corrupti nemo.</p>',
            'category_id' => 1,
            'user_id' => 1
        ]);

        Post::create([
            'title' => 'Judul Ke Tiga',
            'slug' => 'judul-ke-tiga',
            'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Impedit, pariatur?',
            'body' => '<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Eveniet asperiores ratione quas deserunt, aspernatur corporis deleniti commodi dicta natus assumenda?</p>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. At voluptates animi assumenda aliquid dolore provident consectetur architecto excepturi, magni dignissimos nisi necessitatibus iusto ducimus ipsum culpa nemo autem soluta ex consequuntur modi mollitia inventore impedit.</p>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Magni aliquid impedit reiciendis eum, corrupti nemo.</p>',
            'category_id' => 2,
            'user_id' => 2
        ]);

        Post::create([
            'title' => 'Judul Ke Empat',
            'slug' => 'judul-ke-empat',
            'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Impedit, pariatur?',
            'body' => '<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Eveniet asperiores ratione quas deserunt, aspernatur corporis deleniti commodi dicta natus assumenda?</p>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. At voluptates animi assumenda aliquid dolore provident consectetur architecto excepturi, magni dignissimos nisi necessitatibus iusto ducimus ipsum culpa nemo autem soluta ex consequuntur modi mollitia inventore impedit.</p>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Magni aliquid impedit reiciendis eum, corrupti nemo.</p>',
            'category_id' => 1,
            'user_id' => 1
        ]);

        Post::create([
            'title' => 'Judul Ke Lima',
            'slug' => 'judul-ke-lima',
            'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Impedit, pariatur?',
            'body' => '<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Eveniet asperiores ratione quas deserunt, aspernatur corporis deleniti commodi dicta natus assumenda?</p>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. At voluptates animi assumenda aliquid dolore provident consectetur architecto excepturi, magni dignissimos nisi necessitatibus iusto ducimus ipsum culpa nemo autem soluta ex consequuntur modi mollitia inventore impedit.</p>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Magni aliquid impedit reiciendis eum, corrupti nemo.</p>',
            'category_id' => 3,
            'user_id' => 1
        ]);

        Post::create([
            'title' => 'Judul Ke Enam',
            'slug' => 'judul-ke-enam',
            'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Impedit, pariatur?',
            'body' => '<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Eveniet asperiores ratione quas deserunt, aspernatur corporis deleniti commodi dicta natus assumenda?</p>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. At voluptates animi assumenda aliquid dolore provident consectetur architecto excepturi, magni dignissimos nisi necessitatibus iusto ducimus ipsum culpa nemo autem soluta ex consequuntur modi mollitia inventore impedit.</p>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Magni aliquid impedit reiciendis eum, corrupti nemo.</p>',
            'category_id' => 2,
            'user_id' => 1
        ]);
    }
}
