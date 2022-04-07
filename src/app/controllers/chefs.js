const { date } = require('../../lib/utils')
const Chef = require('../models/Chef')
const db = require('../../config/db')


module.exports = {
    index(req, res){
        Chef.all(function(chefs){

            return res.render("admin/chefs/index", {chefs})
        })
    },
    create(req,res) {
        return res.render("admin/chefs/create")
    },
    show(req, res) {
        Chef.find(req.params.id, function (chef) {
            if (!chef) {
                return res.send('Chef not found')
            }
            Chef.findChefRecipes(req.params.id, function (recipes) {
                return res.render('admin/chefs/show', {chef, recipes
                })
            })

        })
    },
    post(req, res){
        const keys = Object.keys(req.body)
        
        for (key of keys) {
            if (req.body[key] == "") return res.send("Please, fill this field " + key)
          
        }

        // for (key of keys) {
        //     // if (req.body[key] == "") res.send("Please, fill all fields!") // using object.keys para acessar todos os atributos do
        //     // req.body, image, ingredient, instruction, information
        //     if (req.body.name == "") return res.send("Please, fill name!")
        //     if (req.body.avatar_url == "") return res.send("Please, fill avatar URL")
        // }
        Chef.create(req.body, function(chef){
            
            return res.redirect(`/admin/chefs/${chef.id}`)
        })
        
    },
    edit(req, res){
        Chef.find(req.params.id, function(chef){
            if(!chef) return res.send("Chef not found!")


            return res.render("admin/chefs/edit", {chef})
        })
    },
    put(req, res) {
        const keys = Object.keys(req.body)

        for (key of keys) {
            // if (req.body[key] == "") res.send("Please, fill all fields!") // using object.keys para acessar todos os atributos do
            // req.body, image, ingredient, instruction, information
            if (req.body.name == "") return res.send("Please, fill name!")
            if (req.body.avatar_url == "") return res.send("Please, fill avatar URL")
        }

        Chef.update(req.body, function(){
            return res.redirect(`/admin/chefs/${req.body.id}`)
        })
    },
    delete(req, res){
        Chef.delete(req.body.id, function(){
            return res.redirect("/admin/chefs")
        })
    }

}