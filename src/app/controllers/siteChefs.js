const { date } = require('../../lib/utils')
const Chef = require('../models/siteChef')
const db = require('../../config/db')


module.exports = {
    index(req, res){
        Chef.all(function(chefs){

            return res.render("chefs", {chefs})
        })
    },
    show(req, res) {
        Chef.find(req.params.id, function (chef) {
            if (!chef) {
                return res.send('Chef not found')
            }
            return res.render('chefs/show', {chef, recipes})
         
        })
    }

}