/**
 * 管理后台的路由
 */

//import {BackendArticle} from '../controllers/backend.export'
const {BackendArticle,Index} = require('../controllers/backend.export')
const router = require('koa-router')();
router.prefix('/server'); //路由前缀

router
    .get('/',Index.index) //默认首页
    .get('/list',BackendArticle.getList);//获取列表


module.exports = router;    