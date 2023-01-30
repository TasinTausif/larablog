<x-layout>
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
</x-layout>