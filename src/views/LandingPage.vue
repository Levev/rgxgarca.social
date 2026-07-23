<template>
    <Panel key="2">
        <div class="rounded-full size-24 mt-8 md:size-32 md:mt-12 bg-(image:--rgxgarca) bg-tuff shadow-lg outline-2 outline-slate-900/10"></div>
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

        <router-link to="/about" class="ml-auto">
            <div class="flex flex-row items-center gap-2 border md:border-2 border-white/10 rounded-2xl backdrop-blur p-6 transition-[scale,background-color] ease-in-out hover:scale-110 hover:bg-white/20">
                <h1 class="text-sm md:text-lg font-semibold text-shadow-lg select-none">Rólunk</h1>
                <Icon icon="ep:arrow-right-bold" class="scale-150"/>
            </div>
        </router-link>
    </Panel>
</template>

<script setup lang="ts">
import SocialButton from '../components/SocialButton.vue';
import Panel from '../components/Panel.vue';
import { Icon } from '@iconify/vue';

const share = () => navigator.share({
    title: "rg x garca saját socials oldala",
    url: "https://rgxgarca.social"
});
</script>

<style scoped>
@reference "tailwindcss";

iframe {
    @apply size-full mt-20 min-h-90;
}
</style>