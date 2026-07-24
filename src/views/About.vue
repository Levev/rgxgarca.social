<template>
    <Panel>
        <div class="rounded-full size-16 mt-8 md:size-32 md:mt-12 bg-(image:--rgxgarca) bg-tuff shadow-lg outline-2 outline-slate-900/10 md:-mb-3"></div>
        <h1 class="mt-2 text-2xl font-semibold md:text-4xl md:font-bold text-shadow-lg not-md:mb-4">rg x garca</h1>

        <Icon icon="lucide:share" @click="share()" class="absolute top-3 right-3 md:top-6 md:right-6 size-14 p-3 md:size-18 md:p-4 overflow-visible backdrop-blur-lg backdrop-contrast-200 border-2 bg-neutral-900/10 border-white/10 drop-shadow-md/40 select-none rounded-full tuff-btn-hover hover:scale-110"/>
        <a href="https://github.com/Levev/rgxgarca.social" target="_blank">
            <Icon icon="line-md:github" class="absolute top-3 left-3 md:top-6 md:left-6 size-14 p-3 md:size-18 md:p-4 overflow-visible backdrop-blur-lg backdrop-contrast-200 border-2 bg-neutral-900/10 border-white/10 drop-shadow-md/40 select-none rounded-full tuff-btn-hover hover:scale-110"/>
        </a>

        <div class="flex flex-col gap-1 not-md:-mt-3 w-full">
            <div class="w-full h-[1px] rounded-full bg-white/60 drop-shadow-2xl/60 md:mb-3"></div>
            <h1 class="text-sm md:text-3xl font-semibold text-shadow-lg">
                Kik vagytok? Miért rg x garca?
            </h1>
            <p class="text-md md:text-lg font-normal text-shadow-lg not-md:leading-tight">
                · Osztálytársak, akiket többek közt a magyar oktatás "élményei" hoztak össze.
                Ezekről a botrányos élményekről és mégtöbbről éneklünk <strong>I-skola</strong> című albumunkban, 
                mely egy kis betekintést nyújt középiskolás mindennapjainkba.<br><br>
                · Dalaink míg tartalmaz(hat)nak túlzásokat, javarészt igaz történetek alapján készültek, bármennyire is hihetetlen vagy nyomasztó ez a tény.
                <small>
                    <small>Ezek az élményeink ha mást nem is, a humornak jó alapot adtak</small>
                </small><br><br>
                · A kezünk közül elvből csakis <strong>saját</strong> munkát adunk ki. Minden <strong>dalunk, oldalunk, képünk, stb.</strong> a saját szellemi termékünk.
                Az AI-t zsigerből utasítjuk vissza, ebben a projektben semmire sem volt használva. 
            </p>
            <h1 class="text-sm md:text-2xl font-semibold text-shadow-lg select-none mt-4 md:mt-6">
                · Mi ez a QR kód amit találtam?
            </h1>
            <p class="text-md md:text-lg font-normal text-shadow-lg not-md:leading-tight">
                Marketingünk része. Ha ven kedved segíts be egy (vagy több) megosztással!
            </p>
        </div>

        <a href="https://hinokodo.itch.io/human-made?download" target="_blank" class="my-auto drop-shadow-2xl/90">
            <img src="/humanmade.svg" alt="Human made - no AI used" class="size-26 md:size-52 drop-shadow-2xl/90 brightness-50"/>
        </a>

        <router-link to="/" class="mr-auto absolute bottom-4 left-4 md:bottom-10 md:left-10">
            <div class="flex flex-row items-center gap-2 border md:border-2 border-white/10 rounded-2xl backdrop-blur p-3 md:p-6 transition-[scale,background-color] ease-in-out hover:scale-110 hover:bg-white/20">
                <Icon icon="ep:arrow-right-bold" class="scale-150 rotate-180"/>
                <h1 class="text-sm md:text-lg font-semibold text-shadow-lg select-none">Vissza</h1>
            </div>
        </router-link>
    </Panel>
</template>

<script setup lang="ts">
import Panel from '../components/Panel.vue';
import { Icon } from '@iconify/vue';
import { share } from '../lib.ts';
</script>