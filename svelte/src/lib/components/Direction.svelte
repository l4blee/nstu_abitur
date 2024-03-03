<script lang="ts">
    let order: string;
    let direction: string;
    let href: string;

    export {order, direction, href};
</script>

<a class="bg-white min-w-[220px] lg:min-w-0 w-[100%] h-[200px] rounded-2xl px-5 py-3 flex flex-col items-start shadow-lg hover:w-[150%] transition-all duration-300" 
    {href}>
    <span class="font-playfair text-3xl font-bold">{order.padStart(2, '0')}</span>
    <div class="mt-auto flex flex-row h-20 items-center w-full">
        <span class="font-mont text-xl text-left w-[60%]">{direction}</span>
        <i class="icon ml-auto">arrow_forward</i>
    </div>
</a>