import { createRouter, createWebHashHistory } from 'vue-router'
import Login from '../views/Login.vue'
import CanteenList from '../views/CanteenList.vue'
import DishList from '../views/DishList.vue'
import Evaluation from '../views/Evaluation.vue'

const routes = [
    {
        path: '/',
        name: 'Login',
        component: Login
    },
    {
        path: '/canteen',
        name: 'CanteenList',
        component: CanteenList
    },
    {
        path: '/dish/:canteenId',
        name: 'DishList',
        component: DishList,
        props: true
    },
    {
        path: '/evaluation/:dishId',
        name: 'Evaluation',
        component: Evaluation,
        props: true
    }
]

const router = createRouter({
    history: createWebHashHistory(),
    routes
})

// 路由守卫（未登录不能访问其他页面）
router.beforeEach((to, from, next) => {
    const user = localStorage.getItem('user')
    if (to.name !== 'Login' && !user) {
        next({ name: 'Login' })
    } else {
        next()
    }
})

export default router