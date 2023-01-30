<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\Category;
use App\Models\Post;
use App\Models\User;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder {
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run() {

        User::truncate();
        Post::truncate();
        Category::truncate();

        $user1 = User::factory()->create([
            'name' => 'John Doe'
        ]);
        $user2 = User::factory()->create([
            'name' => 'John Roe'
        ]);

        Post::factory(5)->create([
            'user_id' => $user1->id
        ]);

        Post::factory(5)->create([
            'user_id' => $user2->id
        ]);


        /*$user = User::factory( )->create();

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);

        $personal = Category::create( [
            'name' => 'Personal',
            'slug' => 'personal',
        ] );

        $family = Category::create( [
            'name' => 'Family',
            'slug' => 'family',
        ] );

        $work = Category::create( [
            'name' => 'Work',
            'slug' => 'work',
        ] );

        Post::create( [
            'user_id' => $user->id,
            'category_id' => $family->id,
            'title' => 'My Family Post',
            'slug' => 'my-family-post',
            'excerpt' => 'Lorem ipsum dolor sit amet consectetur',
            'body' => 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quam recusandae sequi iste hic, amet rerum cupiditate corporis? Magnam blanditiis sit repellendus temporibus dignissimos explicabo rem necessitatibus maiores enim, corrupti ducimus.'
        ] );

        Post::create( [
            'user_id' => $user->id,
            'category_id' => $work->id,
            'title' => 'My Work Post',
            'slug' => 'my-work-post',
            'excerpt' => 'Lorem ipsum dolor sit amet consectetur',
            'body' => 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quam recusandae sequi iste hic, amet rerum cupiditate corporis? Magnam blanditiis sit repellendus temporibus dignissimos explicabo rem necessitatibus maiores enim, corrupti ducimus.'
        ] );
        
        Post::create( [
            'user_id' => $user->id,
            'category_id' => $personal->id,
            'title' => 'My Personal Post',
            'slug' => 'my-personal-post',
            'excerpt' => 'Lorem ipsum dolor sit amet consectetur',
            'body' => 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quam recusandae sequi iste hic, amet rerum cupiditate corporis? Magnam blanditiis sit repellendus temporibus dignissimos explicabo rem necessitatibus maiores enim, corrupti ducimus.'
        ] );*/
    }
}
