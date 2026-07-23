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
    <div 
        class="flex flex-col items-center justify-center w-full rounded-2xl backdrop-blur-2xl border md:border-2 border-white/10 transition-all ease-in-out"
        :class="{
            'h-(--popup-h) translate-y-[-20%] px-4 pb-20 showModal -mb-40 z-10': showModal,
            'md:h-20 h-16 hover:scale-105 hover:bg-white/20': !showModal}"
        @mouseenter="rerenderIcon++"
        @click="$slots.default ? showModal = true : navigateLink()"
        ref="sModal"
    >
        <div 
            class="absolute size-full bg-neutral-800 rounded-2xl transition-opacity duration-400 -z-10 top-0"
            :class="{
                'opacity-100': showModal,
                'opacity-10': !showModal
            }"
        />
        <div 
            class="absolute top-3 w-full flex flex-col items-center justify-center"
            :class="{'md:top-[50%] md:translate-y-[-50%]': !showModal, 'md:top-4': showModal}">
            <Icon :icon="props.icon" :key="rerenderIcon" class="size-16 md:size-20 max-w-max drop-shadow-md/40 p-2 absolute left-0" :class="{'hidden': showModal}"/>
            <h1 class="text-sm md:text-lg font-semibold text-shadow-lg select-none">{{ props.title }}</h1>
            <h3 class="text-xs md:text-md font-normal text-white/60 text-shadow-lg select-none">{{ props.desc }}</h3>
        </div>
        <slot v-if="showModal" :class="{'hidden': !showModal}"></slot>
        <div class="absolute bottom-4 md:bottom-2 w-full flex flex-row items-center justify-between px-4" :class="{'hidden': !showModal}">
            <a :href="props.link" :data-umami-event="`${props.icon.split(':')[1]}-visit`" target="_blank" rel="noopener noreferrer" class="p-3 bg-neutral-900/80 border md:border-2 border-white/10 rounded-full flex flex-row items-center md:gap-2 tuff-btn-hover hover:scale-[1.02]">
                <Icon :icon="props.icon" class="size-6 md:size-10 max-w-max drop-shadow-md/40 bright-hover-tuff"/>
                <h4 class="text-xs font-medium md:text-md md:font-semibold">{{ props.linkText }}</h4>
            </a>
            <div class="flex flex-row gap-2 *:hover:scale-105" ref="copyBtn">
                <Icon @click="copied()" :icon="copyCounter % 2 == 0? 'tabler:copy' : 'line-md:confirm-circle'" :key="copyCounter" class="size-12 md:size-14 p-3 overflow-visible bg-neutral-900/80 border md:border-2 border-white/10 rounded-full tuff-btn-hover cursor-pointer duration-400" :class="{'copy-anim': copyCounter % 2 == 1}"/>
                <Icon @click.stop="showModal = false" icon="mingcute:close-fill" class="size-12 md:size-14 p-3 bg-neutral-900/80 border md:border-2 border-white/10 rounded-full tuff-btn-hover cursor-pointer"/>
            </div>
        </div>
    </div>
</template>

<script setup lang="ts">
import { Icon } from "@iconify/vue";
import { ref, useTemplateRef } from 'vue';
import { onClickOutside } from '@vueuse/core';

const props = defineProps<{
    icon: string;
    title: string;
    desc?: string;
    linkText?: string;
    link: string;
}>();

const rerenderIcon = ref(0);
const copyCounter = ref(0);
const spotifyModal = useTemplateRef("sModal");
const showModal = ref(false);

const copied = () => {
    if(copyCounter.value % 2 !== 0) return;

    navigator.clipboard.writeText(props.link);
    copyCounter.value++;

    setTimeout(() => {
        copyCounter.value++;
    }, 1200);
}

const navigateLink = () => window.location.href = props.link;

onClickOutside(spotifyModal, _ => showModal.value = false);
</script>

<style scoped>
@reference "tailwindcss";

.copy-anim {
    animation: copy 1200ms ease-in-out;
}

@keyframes copy {
    80%, to {
        background-color: color-mix(in oklab, oklch(62.7% 0.194 149.214) 80%, transparent);
        border-color: color-mix(in oklab, var(--color-slate-900) /* oklch(20.8% 0.042 265.755) = #0f172b */ 40%, transparent);
    }
}
</style>