@if (session()->has('key'))
    <div x-data="{ show: true }" x-init="setTimeout(() => show = false, 4000)" x-show="show"
        class="bg-blue-400 bottom-3 fixed p-2 px-4 right-3 rounded-xl text-sm text-white">

        <p>{{ session('key') }}</p>
    </div>
@endif
