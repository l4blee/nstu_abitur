<script lang="ts">
        import Campaign from "$lib/components/Campaign.svelte";
        import Direction from "$lib/components/Direction.svelte";
        import NavBtn from "$lib/components/NavBtn.svelte";

        import logo from "$lib/images/nstu_logo.png";
        import bg from "$lib/images/nstu_bg.png";
        import league from "$lib/images/league.png";
        import DocsBtn from "$lib/components/DocsBtn.svelte";

        function redir(location: string) : void {
                window.location.href = location;
        }

</script>

<div class="flex flex-col w-full h-full m-0 p-0 pb-12">
        <div class="bg-center bg-no-repeat bg-cover pb-12" style="background-image: url({bg});"> <!-- Welcome block -->
                <header class="flex flex-row w-full pt-6 px-12">
                        <div class="flex flex-row">  <!-- Logo -->
                                <button on:click={() => redir('/')}><img src={logo} alt="logo" class="object-contain w-20"/></button>
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
                </header>

                <button class="flex font-mont text-lg font-bold bg-white py-5 px-10 rounded-full ml-auto mt-8 mr-12
                        hover:scale-105 transition-all duration-300 shadow-lg" 
                        on:click={() => redir('https://enrollee.nstu.ru/')}>Личный кабинет</button>

                <div class="flex flex-col ml-28 mt-32 font-mont font-bold"> <!-- Welcome -->
                        <span class="leading-[75px] text-white text-6xl">Добро пожаловать<br/>в НГТУ!</span>
                        <button class="flex text-3xl bg-white py-5 px-10 rounded-full w-fit mt-10
                                hover:scale-105 transition-all duration-300 shadow-lg" on:click={() => redir('/')}>Подробнее</button>
                </div>

                <div class="flex flex-row space-x-5 px-12 mt-32 overflow-scroll">  <!-- Studying directions list -->
                        <Direction order=1 direction="Бакалавриат, специалитет" 
                                href="https://nstu.ru/entrance/entrance_all/bachelor"/>
                        <Direction order=2 direction="Магистратура" 
                                href="https://nstu.ru/entrance/entrance_all/magistracy"/>
                        <Direction order=3 direction="Магистратура ПРО+"
                                href="https://magpro.nstu.ru/"/>
                        <Direction order=4 direction="Аспирантура"
                                href="https://nstu.ru/entrance/entrance_all/post_grad"/>
                        <Direction order=5 direction="СПО на базе 9 классов"
                                href="https://nstu.ru/entrance/entrance_all/spo"/>
                </div>
        </div>

        <div class="w-full h-fit mt-12 px-12 font-mont">  <!-- Admission -->
                <span class="flex text-5xl font-bold w-full">Приёмная кампания 2024</span>
                <div class="grid grid-cols-3 p-8 place-content-evenly justify-center">
                        <!-- 1 row -->
                        <Campaign icon="fact_check" title="Правила приёма" 
                                href="https://nstu.ru/entrance/enrollment_campaign/admission_rules"/>
                        <Campaign icon="checklist" title="Направления и специальности" 
                                href="https://nstu.ru/entrance/enrollment_campaign/bachelor"/>
                        <Campaign icon="diversity_3" title="План набора" 
                                href="https://nstu.ru/entrance/enrollment_campaign/plan_bachelor"/>

                        <!-- 2 row -->
                        <Campaign icon="calendar_month" title="Календарь приема" 
                                href="https://nstu.ru/entrance/enrollment_campaign/calendar_bachelor"/>
                        <Campaign icon="developer_guide" title="Инструкция по поступлению" 
                                href="https://nstu.ru/entrance/enrollment_campaign/apply_bachelor"/>
                        <Campaign icon="document_scanner" title="Необходимые документы" 
                                href="https://nstu.ru/entrance/enrollment_campaign/documents_bachelor"/>

                        <!-- 3 row -->
                        <Campaign icon="trending_down" title="Минимальные баллы" 
                                href="https://nstu.ru/entrance/enrollment_campaign/exams_minimum_bachelor"/>
                        <Campaign icon="ssid_chart" title="Рейтинговые списки" 
                                href="https://nstu.ru/entrance/enrollment_campaign/rating_bachelor"/>
                        <Campaign icon="emoji_events" title="Олимпиады" 
                                href="https://nstu.ru/entrance/enrollment_campaign/olymp_winners"/>

                        <!-- 4 row -->
                        <Campaign icon="globe" title="Иностранным гражданам" 
                                href="https://nstu.ru/entrance/enrollment_campaign/foreign_citizen_admission"/>
                        <Campaign icon="target" title="Целевой прием" 
                                href="https://nstu.ru/entrance/enrollment_campaign/targeted_admission"/>
                        <Campaign icon="loyalty" title="Льготы" 
                                href="https://nstu.ru/entrance/enrollment_campaign/privileges"/>

                        <!-- 5 row -->
                        <Campaign icon="neurology" title="Вступительные испытания" 
                                href="https://nstu.ru/entrance/enrollment_campaign/examination"/>
                        <Campaign icon="hotel_class" title="Индивидуальные достижения" 
                                href="https://nstu.ru/entrance/enrollment_campaign/bachelor_accomplishments"/>
                        <Campaign icon="attach_money" title="Стоимость обучения" 
                                href="https://nstu.ru/entrance/enrollment_campaign/edu_cost_bachelor"/>

                        <!-- 6 row -->
                        <Campaign icon="explore" title="Проходные баллы 2023" 
                                href="https://nstu.ru/entrance/enrollment_campaign/passing_score_bachelor"/>
                        <Campaign icon="calculate" title="Калькулятор ЕГЭ" 
                                href="https://nstu.ru/entrance/enrollment_campaign/ege_calc"/>
                        <Campaign icon="accessible" title="Поступающим с инвалидностью" 
                                href="https://nstu.ru/entrance/enrollment_campaign/disability_assistance"/>
                        </div>
        </div>

        <div class="relative flex flex-row px-12 mt-10"> <!-- League -->
                <span class="font-mont w-1/2">
                        <h1 class="text-4xl font-bold">Лига абитуриентов. Первые</h1>
                        <h2 class="text-2xl mt-2">Участвуй в соревнованиях и получай дополнительные баллы при поступлении!</h2>
                </span>
                <a href="https://league.nstu.ru/"
                class="w-[866px] h-fit hover:scale-105 transition-all duration-300 shadow-lg rounded-3xl ml-auto">
                        <img src={league} alt="league"/>
                </a>
        </div>

        <div class="mt-20 px-12 flex flex-row w-full"> <!-- Commitee -->
                <div class="flex w-[50%] h-fit px-auto shadow-lg rounded-xl"> <!-- Map -->
                        <iframe title="map" class="rounded-xl"
                                src="https://yandex.ru/map-widget/v1/?um=constructor%3A66afe5cc6df4b923290094840b724f1a0127bf850518f8242b032eb11ed9418e&amp;source=constructor" 
                                width="100%" height="500"/>
                </div>
                <div class="ml-12 font-mont text-2xl w-1/2">
                        <h1 class="text-4xl font-bold">Приёмная комиссия</h1>
                        <div class="p-5 space-y-2">
                                <h2 class="font-bold">Режим работы:
                                <span class="font-normal">Понедельник-Пятница 09:00-18:00</span></h2>
                                <h2 class="font-bold">Почтовый адрес для отправки документов:<br/>
                                <span class="font-normal">630073, Новосибирск, проспект Карла Маркса, 20, 2 корпус, 1 этаж. Приемная комиссия НГТУ НЭТИ</span></h2>
                                <h2 class="font-bold">Телефон:
                                <a href="tel:+73833195999" class="font-normal underline">+73833195999</a></h2>
                                <h2 class="font-bold">E-mail:
                                <a href="mailto:pk@nstu.ru" class="font-normal underline">pk@nstu.ru</a></h2>
                                <h2 class="font-bold">Группа Вконтакте:
                                <a href="https://vk.com/abitnstu" class="font-normal underline">vk.com/abitnstu</a></h2>
                                <h2 class="font-bold">Telegram-канал:
                                <a href="https://t.me/abitnstu" class="font-normal underline">@abitnstu</a></h2>
                        </div>
                        <div> <!-- Social media btns -->
                                <div></div> <!-- VK -->
                                <div></div> <!-- YT -->
                                <div></div> <!-- OK -->
                                <div></div> <!-- TG -->
                        </div>
                </div>
        </div>

        <div class="flex flex-col px-12 mt-12 space-y-2 mx-auto"> <!-- Documents -->
                <DocsBtn href="https://nstu.ru/entrance/enrollment_campaign/current_numbers">Конкурсная ситуация 2023</DocsBtn>
                <DocsBtn href="https://nstu.ru/entrance/enrollment_campaign/contract">Оформление договора на платное обучение</DocsBtn>
                <DocsBtn href="https://nstu.ru/public_files/6/enrollee/spravka.pdf">Образец справки для поступления по отдельной квоте</DocsBtn>
                <DocsBtn href="https://nstu.ru/entrance/answers">Задать вопрос</DocsBtn>
        </div>

        <a href="https://enrollee.nstu.ru/" 
           class="border-[3px] border-orange-400 mt-12 text-orange-400 px-10 py-5 
                   text-2xl w-fit mx-auto rounded-full font-bold font-mont 
                   transition-all duration-300 hover:scale-110 shadow-xl">
                Подать документы
        </a>
</div>