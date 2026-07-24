import { createWebHistory, createRouter, type RouteRecordRaw } from "vue-router";

import LandingPage from "./views/LandingPage.vue";
import About from "./views/About.vue";

const routes: RouteRecordRaw[] = [
    { path: "/", component: LandingPage },
    { path: "/about", component: About }
]

export const router = createRouter({
    history: createWebHistory(),
    routes
});