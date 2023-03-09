@props(['author'])

<img src="/images/lary-avatar.svg" alt="Lary avatar">
<div class="ml-3">
    <a href="/?author={{ $author->username }}">
        <h5 class="font-bold">{{ $author->name }}</h5>
    </a>
    <h6>A simple Mascot</h6>
</div>
