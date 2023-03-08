<x-layout>

    <?php
    /*
@foreach ( $posts as $post )

<!--with these we're controlling the even number iterations-->
<article class="{{$loop->even ? 'foobar' : ''}}">

<h1>
<a href="/posts/{{$post->slug}}">
{{$post->title}}
</a>
</h1>

<p>
By <a href="/authors/{{$post->author->username}}">{{$post->author->name}}</a> on <a href="/categories/{{$post->category->slug}}">{{$post->category->name}}</a>
</p>

<div>
<!--Calling Post model means calling table and it's excerpt column-->
{{$post->excerpt}}
</div>

</article>

@endforeach
 */
    ?>
    @include('posts._header')

    <main class="max-w-6xl mx-auto mt-6 lg:mt-20 space-y-6">
        @if ($posts->count())
            <x-posts-grid :posts="$posts" />
        @else
            <p class="text-center">No posts right now. Try again Later</p>
        @endif
    </main>

</x-layout>
