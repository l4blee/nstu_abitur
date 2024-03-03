<script lang="ts">
    let icon: string;
    let title: string;
    let href: string;

    export {icon, href}
</script>

<a href='https://nstu.ru/entrance/enrollment_campaign/{href}' class="flex flex-row items-center mt-10 p-6 h-[85px] lg:h-[100px] w-[90%] mx-auto 
                                  shadow-lg rounded-2xl hover:scale-105 transition-all duration-200">
    <i class="icon text-green-400 text-[50px] lg:text-[80px]">{icon}</i>
    <span class="ml-5 text-center font-mont text-xl w-[80%] lg:text-2xl"><slot/></span>
</a>