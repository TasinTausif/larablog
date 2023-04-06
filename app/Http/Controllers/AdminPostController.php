<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Contracts\View\View;
use Illuminate\Validation\Rule;

class AdminPostController extends Controller {
    public function index() {
        return View( 'admin.posts.index', [
            'posts' => Post::paginate( 50 ),
        ] );
    }

    public function create() {

        return view( 'admin.posts.create' );
    }

    public function store() {

        $attributes = $this->validatePost();

        $attributes['user_id'] = auth()->id();
        $attributes['thumbnail'] = request()->file( 'thumbnail' )->store( 'Thumbnail_images' ); //this will store the path of the image

        Post::create( $attributes );

        return redirect( '/' )->with( 'key', 'Your post has been published successfully' );
    }

    public function edit( Post $post ) {
        return view( 'admin.posts.edit', [
            'post' => $post,
        ] );
    }

    public function update( Post $post ) {
        $attributes = $this->validatePost();

        if ( $attributes['thumbnail'] ?? false ) {
            $attributes['thumbnail'] = request()->file( 'thumbnail' )->store( 'Thumbnail_images' );
        }

        $post->update( $attributes );

        return back()->with( 'key', 'Post Updated Successfully' );
    }

    public function destroy( Post $post ) {
        $post->delete();

        return back()->with( 'key', 'Post Deleted Successfully' );
    }

    protected function validatePost( ?Post $post = null ): array{
        $post??=new Post();

        return request()->validate( [
            'title'       => 'required',
            'thumbnail'   => $post->exists ? ['image'] : ['required', 'image'],
            'slug'        => ['required', Rule::unique( 'posts', 'slug' )->ignore( $post )],
            //'slug'        => 'required|unique:posts',//Here unique function will search slug in posts table for unique slugs
            'excerpt'     => 'required',
            'body'        => 'required',
            //'category_id' => 'required|exists:categories,id',//Here exists function will check if category_id exists in category table's id column
            'category_id' => ['required', Rule::exists( 'categories', 'id' )], //Rules here will check if the they exists in the category table's id column. And this is Illuminate\Validate\Rule
        ] );
    }

}
