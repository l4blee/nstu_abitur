<script lang="ts">
        import MobileNavBtn from "$lib/components/MobileNavBtn.svelte";
        import NavBtn from "$lib/components/NavBtn.svelte";
        import Direction from '$lib/components/Direction.svelte';
        import Campaign from "$lib/components/Campaign.svelte";
        import DocsBtn from '$lib/components/DocsBtn.svelte'
    
        import league from "$lib/images/league.png";
        import touch from "$lib/images/touch.svg";
        import logo from '$lib/images/nstu_logo.png'
    
        function redir(location: string) : void {
            window.location.href = location;
        }
    </script>
    
    <div class="flex flex-col w-full h-full m-0 p-0 relative pb-16 lg:pb-20">
        <header class='flex flex-col bg-center bg-no-repeat bg-cover h-[300px] lg:h-auto 
                    bg-[url("$lib/images/nstu_bg_big.png")] lg:bg-[url("$lib/images/nstu_bg.png")]'>
            <!-- Navigation block (small screens) -->
            <div class='block lg:hidden relative h-full'>
                <a href='https://enrollee.nstu.ru/' class='icon text-gray-500 flex rounded-full bg-white h-14 w-14 font-mont text-4xl mt-5 mr-5 ml-auto items-center justify-center'>
                    person
                </a>
                <div class='absolute flex bottom-[-1.5rem] bg-white text-gray-400 rounded-full p-2 h-12 w-[70%] shadow-lg items-center left-0 right-0 mx-auto'>
                    <span class='icon text-black mr-2'>search</span>
                    <input class='font-mont' placeholder="Поиск"/>
                </div>
            </div>
    
            <!-- Welcome block (large screens) -->
            <div class='hidden lg:block'>
                <div class='flex flex-row w-full pt-6 px-12 h-fit'>   
                    <div class="flex flex-row items-center">
                        <a href='/' class='h-fit w-fit'><img src={logo} alt="logo" class="w-20"/></a>
                        <div class="flex flex-col pl-4 w-fit">
                                <span class="text-white text-xl font-mont">Новосибирский государственный<br/>технический университет</span>
                                <span class="text-white text-3xl font-mont font-bold">НЭТИ</span>
                        </div>
                    </div>
            
                    <nav class="flex flex-row ml-auto space-x-10 text-white font-mont">
                            <NavBtn href="https://nstu.ru/university">Об университете</NavBtn>
                            <NavBtn href="https://nstu.ru/edu">Образование</NavBtn>
                            <NavBtn href="https://nstu.ru/media/new_brand">Медиа</NavBtn>
                            <NavBtn href="https://nstu.ru/campus">Кампус</NavBtn>
                            <button><i class="material-symbols-outlined ml-14">search</i></button>
                    </nav>
                </div>
            
                <button class="flex font-mont text-lg font-bold bg-white py-5 px-10 rounded-full ml-auto mt-8 mr-12
                hover:scale-105 transition-all duration-300 shadow-lg" 
                on:click={() => redir('https://enrollee.nstu.ru/')}>Личный кабинет</button>
    
                <div class="flex flex-col ml-28 mt-32 font-mont font-bold"> <!-- Welcome -->
                        <span class="leading-[75px] text-white text-6xl">Добро пожаловать<br/>в НГТУ!</span>
                        <button class="flex text-3xl bg-white py-5 px-10 rounded-full w-fit mt-10
                                hover:scale-105 transition-all duration-300 shadow-lg" on:click={() => redir('/')}>Подробнее</button>
                </div>
    
                <nav class='flex flex-row overflow-x-auto overflow-y-hidden space-x-5 px-12 mt-32 mb-12' style="scrollbar-width: none;">
                    <Direction order=1 direction='Бакалавриат, специалитет' href='https://nstu.ru/entrance/entrance_all/bachelor'/>
                    <Direction order=2 direction='Магистратура' href='https://nstu.ru/entrance/entrance_all/magistracy'/>
                    <Direction order=3 direction='Магистратура ПРО+' href='https://magpro.nstu.ru/'/>
                    <Direction order=4 direction='Аспирантура' href='https://nstu.ru/entrance/entrance_all/post_grad'/>
                    <Direction order=5 direction='СПО на базе 9 классов' href='https://nstu.ru/entrance/entrance_all/spo'/>
                </nav>
            </div>
        </header>
    
        <!-- Navigation (small screens) -->
        <nav class='lg:hidden flex flex-row space-x-2 justify-evenly mt-10'>
            <MobileNavBtn href='https://nstu.ru/university' icon_tag='school'>Университет</MobileNavBtn>
            <MobileNavBtn href='https://nstu.ru/edu' icon_tag='history_edu'>Образование</MobileNavBtn>
            <MobileNavBtn href='https://nstu.ru/media/new_brand' icon_tag='meeting_room'>Поступающим</MobileNavBtn>
            <MobileNavBtn href='https://nstu.ru/campus' icon_tag='apartment'>Кампус</MobileNavBtn>
        </nav>
    
        <!-- Directions (small screens) -->
        <div class='mt-5 font-mont lg:hidden'>
            <span class='font-bold text-2xl mb-2 pl-2'>Поступающим</span>
            <nav class='flex flex-row overflow-x-auto overflow-y-hidden space-x-5 py-5 pl-4' style="scrollbar-width: none;">
                <Direction order=1 direction='Бакалавриат, специалитет' href='https://nstu.ru/entrance/entrance_all/bachelor'/>
                <Direction order=2 direction='Магистратура' href='https://nstu.ru/entrance/entrance_all/magistracy'/>
                <Direction order=3 direction='Магистратура ПРО+' href='https://magpro.nstu.ru/'/>
                <Direction order=4 direction='Аспирантура' href='https://nstu.ru/entrance/entrance_all/post_grad'/>
                <Direction order=5 direction='СПО на базе 9 классов' href='https://nstu.ru/entrance/entrance_all/spo'/>
            </nav>
        </div>
    
        <!-- Admission -->
        <div class='mt-5 lg:mt-12 lg:px-12 font-mont'> 
            <span class='font-bold text-2xl lg:text-5xl mb-2 pl-2 lg:p-0'>Приёмная кампания 2024</span>
            <nav class='grid lg:grid-cols-3 lg:p-8'>
                <!-- 1st row -->
                <Campaign href='/admission_rules' icon='fact_check'>Правила приёма</Campaign>
                <Campaign href='/bachelor' icon='checklist'>Направления и специальности</Campaign>
                <Campaign href='/plan_bachelor' icon='diversity_3'>План набора</Campaign>
                <!-- 2nd row -->
                <Campaign href='/calendar_bachelor' icon='calendar_month'>Календарь приема</Campaign>
                <Campaign href='/apply_bachelor' icon='developer_guide'>Инструкция по поступлению</Campaign>
                <Campaign href='/documents_bachelor' icon='document_scanner'>Необходимые документы</Campaign>
                <!-- 3rd row -->
                <Campaign href='/exams_minimum_bachelor' icon='trending_down'>Минимальные баллы</Campaign>
                <Campaign href='/rating_bachelor' icon='ssid_chart'>Рейтинговые списки</Campaign>
                <Campaign href='/olymp_winners' icon='emoji_events'>Олимпиады</Campaign>
                <!-- 4th row -->
                <Campaign href='/foreign_citizen_admission' icon='globe'>Иностранным гражданам</Campaign>
                <Campaign href='/targeted_admission' icon='target'>Целевой прием</Campaign>
                <Campaign href='/privileges' icon='loyalty'>Льготы</Campaign>
                <!-- 5ft row -->
                <Campaign href='/examination' icon='neurology'>Вступительные испытания</Campaign>
                <Campaign href='/bachelor_accomplishments' icon='hotel_class'>Индивидуальные достижения</Campaign>
                <Campaign href='/edu_cost_bachelor' icon='attach_money'>Стоимость обучения</Campaign>
                <!-- 6th row -->
                <Campaign href='/passing_score_bachelor' icon='explore'>Проходные баллы 2023</Campaign>
                <Campaign href='/ege_calc' icon='calculate'>Калькулятор ЕГЭ</Campaign>
                <Campaign href='/disability_assistance' icon='accessible'>Поступающим с инвалидностью</Campaign>
            </nav>
        </div>
    
        <!-- League -->
        <div class='flex flex-col lg:flex-row mt-5 lg:mt-10 font-mont text-2xl w-full align-middle px-2 lg:px-12'>
            <span class="font-mont lg:w-1/2">
                    <h1 class="text-2xl lg:text-4xl font-bold">Лига абитуриентов. Первые</h1>
                    <h2 class="text-xl lg:text-2xl px-2 lg:p-0 lg:mt-2">Участвуй в соревнованиях и получай дополнительные баллы при поступлении!</h2>
            </span>
            <a href="https://league.nstu.ru/" class='mt-2 lg:m-0 lg:ml-5 shadow-lg w-fit rounded-xl lg:rounded-3xl hover:scale-[1.025] transition-all duration-300'>
                    <img class='block' src={league} alt="league"/>
            </a>
        </div>
    
        <!-- Commitee -->
        <div class='flex flex-row mt-5 lg:mt-20 font-mont text-xl px-2 lg:px-12'>
            <!-- Map (large screens) -->
            <div class="hidden lg:flex w-[50%] h-fit px-auto shadow-lg rounded-xl mr-12"> <!-- Map -->
                <iframe title="map" class="rounded-xl"
                        src="https://yandex.ru/map-widget/v1/?um=constructor%3A66afe5cc6df4b923290094840b724f1a0127bf850518f8242b032eb11ed9418e&amp;source=constructor" 
                        width="100%" height="500"/>
            </div>
    
            <div class='flex-col lg:w-1/2 lg:text-2xl'>
                <span class='text-2xl lg:text-4xl font-bold'>Приёмная комиссия</span>
                <div class="p-2 lg:p-5 space-y-2">
                    <h2 class="font-bold">Режим работы:
                        <span class="font-normal">Понедельник-Пятница 09:00-18:00</span></h2>
                    <h2 class="font-bold">Почтовый адрес для отправки документов:<br/>
                        <a href='geo:124.028582,-29.201930' class="font-normal underline">630073, Новосибирск, проспект Карла Маркса, 20, 2 корпус, 1 этаж. Приемная комиссия НГТУ НЭТИ</a>
                    </h2>
                    <h2 class="font-bold">Телефон:
                        <a href="tel:+73833195999" class="font-normal underline">+73833195999</a></h2>
                    <h2 class="font-bold">E-mail:
                        <a href="mailto:pk@nstu.ru" class="font-normal underline">pk@nstu.ru</a></h2>
                    <h2 class="font-bold">Группа Вконтакте:
                        <a href="https://vk.com/abitnstu" class="font-normal underline">vk.com/abitnstu</a></h2>
                    <h2 class="font-bold">Telegram-канал:
                        <a href="https://t.me/abitnstu" class="font-normal underline">@abitnstu</a></h2>
                </div>
            </div>
        </div>
    
        <div class="flex flex-col px-2 mt-5 lg:mt-12 space-y-2 mx-auto"> <!-- Documents -->
            <DocsBtn href="https://nstu.ru/entrance/enrollment_campaign/current_numbers">Конкурсная ситуация 2023</DocsBtn>
            <DocsBtn href="https://nstu.ru/entrance/enrollment_campaign/contract">Оформление договора на платное обучение</DocsBtn>
            <DocsBtn href="https://nstu.ru/public_files/6/enrollee/spravka.pdf">Образец справки для поступления по отдельной квоте</DocsBtn>
            <DocsBtn href="https://nstu.ru/entrance/answers">Задать вопрос</DocsBtn>
        </div>
        
        <div class='flex relative w-fit mx-auto mt-10 lg:mt-16'>
            <a href="https://enrollee.nstu.ru/" 
                class="mx-auto
                        border-[3px] border-orange-400 text-orange-400 px-7 py-3 
                        lg:px-10 lg:py-5 lg:text-2xl
                        text-xl w-fit rounded-full font-bold font-mont 
                        transition-all duration-300 hover:scale-110 shadow-xl">
                Подать документы
            </a>
            <img class='absolute right-[-35px] bottom-[-35px]' src={touch} alt='touch'/>
        </div>
    </div>