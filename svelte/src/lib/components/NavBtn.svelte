<script lang="ts">
    let onClick: () => void;
    let href: string;

    export { href }
</script>

<a {href} class="relative
                 h-fit
                 my-auto
                after:bg-white 
                 after:absolute 
                 after:h-[2px] 
                 after:w-0 
                 after:bottom-[-5px]
                 after:left-0 
                 after:transition-all transition-all
                 after:duration-300 duration-300
                 hover:after:w-full
                 hover:scale-[1.1]">
    <slot/>
</a>