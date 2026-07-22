<!--
 * This file is part of rgxgarca.social.
 Copyright (C) 2026 Levente Bogar

 *program name* is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.

 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.

 You should have received a copy of the GNU General Public License
 along with this program.  If not, see <http://www.gnu.org/licenses/>.
-->

<template>
    <main class="overflow-hidden w-screen h-dvh bg-(image:--cover) bg-tuff md:py-10">
        <div class="w-full md:w-(--panel-w) h-full relative m-auto flex flex-col md:gap-3 items-center overflow-hidden p-4 md:p-12 md:rounded-4xl bg-neutral-900/10 backdrop-blur-lg md:border-2 border-white/10 shadow-2xl/60 text-white">
            <div class="rounded-full size-24 mt-8 md:size-32 md:mt-12 bg-(image:--rgxgarca) bg-tuff shadow-lg outline-2 outline-slate-900/10 "></div>
            <h1 class="mt-2 text-2xl font-semibold md:text-4xl md:font-bold text-shadow-lg">rg x garca</h1>
            <h3 class="text-lg font-medium md:text-2xl md:font-semibold text-shadow-lg text-white/60">legjobb zene(k)</h3>

            <Icon icon="lucide:share" @click="share()" class="absolute top-3 right-3 md:top-6 md:right-6 size-14 p-3 md:size-18 md:p-4 overflow-visible backdrop-blur-lg backdrop-contrast-200 border-2 bg-neutral-900/10 border-white/10 drop-shadow-md/40 select-none rounded-full tuff-btn-hover hover:scale-110"/>
            <a href="https://github.com/Levev/rgxgarca.social" target="_blank">
                <Icon icon="line-md:github" class="absolute top-3 left-3 md:top-6 md:left-6 size-14 p-3 md:size-18 md:p-4 overflow-visible backdrop-blur-lg backdrop-contrast-200 border-2 bg-neutral-900/10 border-white/10 drop-shadow-md/40 select-none rounded-full tuff-btn-hover hover:scale-110"/>
            </a>

            <SocialButton icon="line-md:spotify" title="rg x garca · Spotify" data-umami-event="spotify-expand" desc="Gizda zenékért" link-text="Nyissuk meg öcsipók" link="https://open.spotify.com/artist/51aizcUAA7QuxTN9KBQcT1" class="mt-12">
                <iframe src="https://open.spotify.com/embed/artist/51aizcUAA7QuxTN9KBQcT1" title="tufftuff music embed" allow="encrypted-media"></iframe>
            </SocialButton>
            <SocialButton icon="line-md:youtube" title="rg x garca · Youtube" data-umami-event="youtube-expand" desc="És klippekért" link-text="Nyissuk meg öcsipók" link="https://youtube.com/@rgxgarca" class="mt-3">
                <iframe src="https://www.youtube-nocookie.com/embed/videoseries?si=NV5z2dEB-z2ZwDj_&amp;list=OLAK5uy_nbzKmil3NlloKFQjTAyungSoMA-v0mnbM" title="tuff youtube video player" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
            </SocialButton>
            <SocialButton icon="line-md:instagram" title="rg x garca · Instagram" data-umami-event="instagram-visit" desc="Kövess minket mindenol" link="https://www.instagram.com/rg_x_garca/" class="mt-3" />
            <SocialButton icon="line-md:tiktok" title="rg x garca · TikTok" data-umami-event="tiktok-visit" desc="Mert vége az I-skolanak" link="https://www.tiktok.com/@rg_x_garca" class="mt-3" />

            <a href="https://hinokodo.itch.io/human-made?download" target="_blank" class="my-auto drop-shadow-2xl/90">
                <img src="/humanmade.svg" alt="Human made - no AI used" class="size-26 md:size-52 drop-shadow-2xl/90 brightness-50"/>
            </a>
        </div>
    </main>
</template>

<script setup lang="ts">
import SocialButton from './components/SocialButton.vue';
import { Icon } from '@iconify/vue';

const share = () => navigator.share({
    title: "rg x garca saját socials oldala",
    url: "https://rgxgarca.social"
});
</script>

<style>

@reference "tailwindcss";
.bg-tuff {
    @apply bg-center bg-cover;
}

.tuff-btn-hover {
    @apply transition-[filter,scale,color] duration-200 ease-in hover:brightness-125;
}

:root {
    --panel-w: 40rem;
    --popup-h: 50rem;
    --cover: url("/album_stylized.png");
    --rgxgarca: url("/rgxgarca.jpg");
}

iframe {
    @apply size-full mt-20 min-h-[360px];
}
</style>