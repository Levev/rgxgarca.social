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
        class="top-0 flex flex-col items-center justify-center w-full rounded-2xl backdrop-blur-2xl border-2 border-white/10 transition-all ease-in-out tuff-spotify-transition"
        :class="{
            'h-(--popup-h) translate-y-[-20%] px-4 pb-20 showModal -mb-40': showModal,
            'h-20': !showModal}"
        @mouseenter="rerenderSpotify++"
        @click="showModal = true"
        ref="sModal"
    >
        <div 
            class="absolute size-full bg-neutral-800 rounded-2xl transition-opacity duration-400 -z-10 top-0"
            :class="{
                'opacity-100': showModal,
                'opacity-10': !showModal
            }"
        />
        <div class="absolute top-3 w-full flex flex-col items-center justify-center">
            <Icon :icon="props.icon" :key="rerenderSpotify" class="size-20 max-w-max drop-shadow-md/40 p-2 absolute left-0" :class="{'hidden': showModal}"/>
            <h1 class="text-lg font-semibold text-shadow-lg select-none">{{ props.title }}</h1>
            <h3 class="text-md font-normal text-white/60 text-shadow-lg select-none">{{ props.desc }}</h3>
        </div>
        <slot v-if="showModal" :class="{'hidden': !showModal}"></slot>
        <div class="absolute bottom-3 w-full flex flex-row items-center justify-between px-4" :class="{'hidden': !showModal}">
            <a :href="props.link" target="_blank" rel="noopener noreferrer" class="p-2 bg-neutral-900/80 rounded-full flex flex-row items-center gap-2 bright-hover-tuff">
                <Icon :icon="props.icon" class="size-10 max-w-max drop-shadow-md/40 bright-hover-tuff"/>
                <h4>{{ props.linkText }}</h4>
            </a>
            <Icon icon="tabler:copy" class="size-14 p-3 bg-neutral-900/80 rounded-full bright-hover-tuff cursor-pointer"/>
        </div>
    </div>
</template>

<script setup lang="ts">
import { Icon } from "@iconify/vue";
import { ref, useTemplateRef, type Ref } from 'vue';
import { onClickOutside } from '@vueuse/core';

const props = defineProps<{
    icon: string;
    title: string;
    desc?: string;
    linkText: string;
    link: string;
}>();

const rerenderSpotify = ref(0);
const spotifyModal = useTemplateRef("sModal");
const showModal = ref(false);

onClickOutside(spotifyModal, _ => showModal.value = false);
</script>