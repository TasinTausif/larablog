@props(['heading'])
<section class="max-w-4xl mx-auto py-8">

    <h1 class="text-2xl font-bold text-blue-400 mb-6 pb-2 border-b">
        {{ $heading }}
    </h1>

    <div class="flex">
        <aside class="w-48 flex-shrink-0">
            <h4 class="font-semibold mb-4">Links</h4>

            <ul>
                <li>
                    <a href="/admin/posts" class="{{ request()->is('admin/posts') ? 'text-blue-400' : '' }}">All Posts</a>
                </li>

                <li>
                    <a href="/admin/posts/create"
                        class="{{ request()->is('admin/posts/create') ? 'text-blue-400' : '' }}">New Post</a>
                </li>

                <li>
                    <a href="/"
                        class="transition-colors duration-300 relative inline-flex items-center hover:text-red-400">
                        Back to Home
                    </a>
                </li>
            </ul>

        </aside>

        <main class="flex-1">
            <x-panel>
                {{ $slot }}
            </x-panel>
        </main>
    </div>
</section>
