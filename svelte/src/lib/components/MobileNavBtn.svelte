<script lang="ts">
    let href: string;
    let icon_tag: string;

    export { href, icon_tag }
</script>

<a {href} class='flex flex-col font-mont items-center'>
    <span class='flex icon bg-gray-300 text-gray-500 rounded-full text-4xl w-14 h-14 justify-center items-center'>{icon_tag}</span>
    <span class='font-semibold text-xs mt-1'><slot/></span>
</a>