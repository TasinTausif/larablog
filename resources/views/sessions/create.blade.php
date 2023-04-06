<x-layout>
    <section class="px-6 py-8">
        <main class="max-w-lg mx-auto mt-10 border border-gray-200 p-6 rounded-xl">

            <h1 class="text-center font-bold text-xl">Log In</h1>

            <form method="POST" action="/login" class="mt-10">
                @csrf

                <x-form.input name=email type="email" autocomplete="username" />
                <x-form.input name=password type="password" autocomplete="old-password" />{{-- Here, in autocomplete, in login page, we'll pass old-password to recall the pass and in registration, we'll suggest a new password --}}

                <x-form.button>Log In</x-form.button>
            </form>
        </main>
    </section>
</x-layout>
