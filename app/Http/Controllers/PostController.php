<?php

namespace App\Http\Controllers;

use App\Models\Post;

class PostController extends Controller {
    public function index() {

//It was used to check n+1 problem from logs.
        /*DB::listen(function($query){
        logger($query->sql, $query->bindings);
        });*/

        return view( 'posts.index', [
            //'posts'      => Post::latest()->with( 'category', 'author' )->get(),
            //'posts'      => Post::latest()->filter( request()->only('search) )->get(),//Similar appproach with exact same result
            'posts' => Post::latest()->filter( request( ['search', 'category'] ) )->get(),
        ] );
    }

    public function show( Post $post ) {

//Find a post by it's slug and pass it to a view called "post"
        //return view( 'post', ['post' => Post::findOrFail( $id )] );

        return view( 'posts.show', [
            'post' => $post,
        ] );
    }

}
