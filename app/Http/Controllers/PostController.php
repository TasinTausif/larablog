<?php

namespace App\Http\Controllers;

use App\Models\Post;

//use Illuminate\Support\Facades\Gate

class PostController extends Controller {
    public function index() {

        //It was used to check n+1 problem from logs.
        /*DB::listen(function($query){
        logger($query->sql, $query->bindings);
        });*/

        //Gate::allows(), request()->auth()->can(), request()->auth()->cannot() -> all these methods returns boolean and if can't pass, stays in the same page
        //$this->authorize() -> it checks the complete authorization and if fails, returns a 403 error

        return view( 'posts.index', [

            //'posts'      => Post::latest()->with( 'category', 'author' )->get(),
            //'posts'      => Post::latest()->filter( request()->only('search) )->get(),//Similar appproach with exact same result

            'posts' => Post::latest()->filter( request( ['search', 'category', 'author'] ) )
                ->paginate( 6 )->withQueryString(),
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
