<script lang="ts">
    let icon: string;
    let title: string;
    let href: string;

    export {icon, title, href}
</script>

<a {href} class="flex flex-row items-center text-2xl mt-10 p-6 h-[100px] w-[90%] mx-auto 
                                  shadow-lg rounded-2xl hover:scale-[1.05] transition-all duration-200">
    <i class="icon text-green-400 text-[80px]">{icon}</i>
    <span class="ml-5 text-center font-mont w-[80%]">{title}</span>
</a>