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
    <main class="overflow-hidden w-screen h-dvh flex flex-col items-center justify-center bg-(image:--cover) bg-tuff md:py-10">
        <div class="transform-3d perspective-[3000px] w-fit hover:rotate-y-180 transition-all duration-1000 scale-75">
            <LandingPage class="translate-z-48"/>
            <About class="-translate-z-48 rotate-y-180 -translate-y-full"/>
        </div>
    </main>
</template>

<script setup lang="ts">
import LandingPage from './views/LandingPage.vue';
import About from './views/About.vue';
</script>

<style>
@reference "tailwindcss";

.tuff-btn-hover {
    @apply transition-[filter,scale,color] duration-200 ease-in hover:brightness-125;
}

.bg-tuff {
    @apply bg-center bg-cover;
}

:root {
    --panel-w: 40rem;
    --popup-h: 50rem;
    --cover: url("/album_stylized.png");
    --rgxgarca: url("/rgxgarca.jpg");
}

.panel-enter-active, .panel-leave-active {
    transition: all 4s ease;
}
.panel-enter-from {
    transform: rotateY(-180deg) translateZ(-600px);
}
.panel-leave-to {
  transform: rotateY(180deg) translateZ(-600px); 
}
</style>