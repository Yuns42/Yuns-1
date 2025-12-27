import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
// 引入Element Plus
import ElementPlus from 'element-plus'
import 'element-plus/dist/index.css'
// 引入Axios
import axios from 'axios'

const app = createApp(App)
// 配置Axios全局变量
app.config.globalProperties.$axios = axios
// 配置Axios基础地址（后端接口地址）
axios.defaults.baseURL = 'http://localhost:8080'

app.use(router)
app.use(ElementPlus)
app.mount('#app')