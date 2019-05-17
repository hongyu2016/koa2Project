/**
 * 统一引入和导出前端api，以及管理后台的router
 */

const backendRouter = require('./routes/backend');
const frontendRouter = require('./routes/frontend');

//export { backendRouter, frontendRouter }
module.exports={backendRouter,frontendRouter}
