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
        User::factory(10)->create();
        Post::factory(7)->create();
        // User::create([
            //     'name' => 'Abu Abdirohman',
            //     'email' => 'abuabdirohman4@gmail.com',
            //     'password' => bcrypt('12345')
            // ]);

        // User::create([
            //     'name' => 'Azati Hanani',
            //     'email' => 'hananimania@gmail.com',
            //     'password' => bcrypt('12345')
            // ]);

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


    }
}
