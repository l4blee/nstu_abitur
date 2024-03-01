<script lang="ts">
    let href: string;

    export { href }
</script>

<a {href} class="font-mont text-2xl h-fit w-fit flex items-center relative
               after:bg-black 
                 after:absolute 
                 after:h-[2px] 
                 after:w-0 
                 after:bottom-0
                 after:right-0
                 after:transition-all transition-all
                 after:duration-300 duration-300
                 hover:after:w-full">
    <span class="icon mr-3">check_circle</span>
    <span><slot/></span>
</a>