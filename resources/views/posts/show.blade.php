<x-layout>
    <?php
    /*
<article>
<h1>
<!--Since it is not a html code, it can be declared like this -->
{{$post->title}}
</h1>

<p>
By <a href="/authors/{{$post->author->username}}">{{$post->author->name}}</a> on <a href="/categories/{{$post->category->slug}}">{{$post->category->name}}</a>
</p>

<div>
<p>
<!--Since it is a html code, it need to be declared like this -->
{!!$post->body!!}
</p>
</div>
</article>

<a href="/">Go Back</a>
 */
    ?>

    <section class="px-6 py-8">
        <main class="max-w-6xl mx-auto mt-10 lg:mt-20 space-y-6">
            <article class="max-w-4xl mx-auto lg:grid lg:grid-cols-12 gap-x-10">
                <div class="col-span-4 lg:text-center lg:pt-14 mb-10">
                    {{-- <img src="/storage/{{ $post->thumbnail }}" alt="" class="rounded-xl"> --}}
                    <img src="{{ asset('storage/' . $post->thumbnail) }}" alt="" class="rounded-xl">

                    <p class="mt-4 block text-gray-400 text-xs">
                        Published <time>{{ $post->created_at->diffForHumans() }}</time>
                    </p>

                    <div class="flex items-center lg:justify-center text-sm mt-4">
                        <x-author-button :author="$post->author" class="text-left" />
                    </div>
                </div>

                <div class="col-span-8">
                    <div class="hidden lg:flex justify-between mb-6">
                        <a href="/"
                            class="transition-colors duration-300 relative inline-flex items-center text-lg hover:text-blue-500">
                            <x-icon name="side-arrow" class="mr-2" />
                            Back to Posts
                        </a>

                        <div class="space-x-2">
                            <x-category-button :category="$post->category" />
                        </div>
                    </div>

                    <h1 class="font-bold text-3xl lg:text-4xl mb-10">
                        {{ $post->title }}
                    </h1>

                    <div class="space-y-4 lg:text-lg leading-loose">
                        {!! $post->body !!}
                    </div>
                </div>

                {{-- Post Comments --}}
                <section class="mt-10 col-span-8 col-start-5 space-y-6">

                    @include('posts._add-comment-form')

                    @foreach ($post->comments as $comment)
                        <x-post-comment :comment=$comment />
                    @endforeach

                </section>

            </article>
        </main>
    </section>
</x-layout>
