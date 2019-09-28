
class Index{
    static async index(ctx){
        await ctx.render('index', {
            title: '你好 Koa 2!'
        })
    }
}

module.exports=Index