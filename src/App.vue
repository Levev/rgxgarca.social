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
        <router-view v-slot="{ Component }">
            <Transition mode="out-in" name="panel" tag="div" class="transform">
                <component :is="Component" />
            </Transition>
        </router-view>
    </main>
</template>

<script setup lang="ts">

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

.panel-enter-active,
.panel-leave-active {
    perspective: 1200px;
    transform-style: preserve-3d;
    transition: all 0.2s ease;
}
.panel-enter-from,
.panel-leave-to {
  transform: rotateY(90deg); 
}
</style>