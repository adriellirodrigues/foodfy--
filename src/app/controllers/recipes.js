const Recipe = require('../models/Recipe')
const { date } = require('../../lib/utils')

module.exports = {
    index(req, res){
        Recipe.all(function(recipes){
            
            return res.render("admin/recipes/index", { recipes })
        })
       
    },
    all(req, res){
        return
        // return res.render("admin/recipes", {recipes : data.recipes})
    },
    create(req, res){
        // return res.render("admin/recipes/create", {recipes : data.recipes})

        Recipe.chefsSelectOptions(function(options){

            return res.render("admin/recipes/create", {chefOptions : options})
        })
    },
    show(req, res){
        Recipe.find(req.params.id, function(recipe){
            if(!recipe) return res.send("Recipe not found!")

            recipe.created_at = date(recipe.created_at).format
            
            return res.render("admin/recipes/detail-recipe", {recipe})
        })
            // // const id = req.params.id //puxa o id e utilizo o recipeId no scripts
            // const { id } = req.params

            // const foundRecipe = data.recipes.find(function(recipe){
            //     return id == recipe.id
            // })

            // if (!foundRecipe) return res.send("Recipe not found!")
            // // const recipe = {
            // //     ...foundRecipe,
            // //     // instructions : foundRecipe.instructions.split(",")
            // // }
            // return res.render("recipe", {recipe : foundRecipe})
    },
    post(req, res){
        const keys = Object.keys(req.body)

        for (key of keys) {
            // if (req.body[key] == "") res.send("Please, fill all fields!") // using object.keys para acessar todos os atributos do
            // req.body, image, ingredient, instruction, information
            if (req.body.title == "") return res.alert("Please, fill title recipe!")
            if (req.body.image == "") return res.alert("Please, fill URL image!")
            if (req.body.ingredients == "") return res.alert("Please, fill ingredients!")
            if (req.body.insctructions == "") return res.alert("Please, fill method preparation!")

        }
        Recipe.create(req.body, function(recipe){

            return res.redirect(`/admin/recipes/${recipe.id}`)
        })

        // por isso usamos let, e nao, const
        // const id = Number(data.recipes.length + 1) // criando o id, e atribuindo o autoincrement nos data.json
        // const created_at = Date.now()
    
        // data.recipes.push({
        //     id,
        //     image,
        //     title,
        //     ingredients,
        //     instructions,
        //     information,
        //     created_at
        // }) // puxando a variável data.json para add novamente, os dados inseridos no dom
    
        // fs.writeFile("data.json", JSON.stringify(data, null, 2), function(err){
        //     if (err) return res.send("Write file error!")
    
        // })
        // return res.redirect("/admin/recipes/")
    },
    edit(req, res){

        Recipe.find(req.params.id, function(recipe){
            if(!recipe) return res.send("Recipe not found!")

            Recipe.chefsSelectOptions(function(options){
            return res.render("admin/recipes/edit", {recipe, chefOptions : options})
            })
            
        })
        // const { id } = req.params
        // // separate id, from req.params.id
    
        // const foundRecipe = data.recipes.find(function(recipe) {
        // // search in data of recipes, recipes
        // return id == recipe.id
        // // compare id from the route, with id exists created.
        // // if find == true id, show
        
        // })
    
        // if (!foundRecipe) return res.send("Recipe not found!")
        //     // if not found // return
        // const recipe = {
        //     ...foundRecipe,
        //     created_at : date(foundRecipe.created_at)
        // }    
        
        // return res.render("admin/recipes/edit", {  recipe   })
    },
    put(req, res){
        const keys = Object.keys(req.body)
        
        for (key of keys) {
            // if (req.body[key] == "") res.send("Please, fill all fields!") // using object.keys para acessar todos os atributos do
            // req.body, image, ingredient, instruction, information
            if (req.body.title == "") return res.alert("Please, fill title recipe!")
            if (req.body.image == "") return res.alert("Please, fill URL image!")
            if (req.body.ingredients == "") return res.alert("Please, fill ingredients!")
            if (req.body.insctructions == "") return res.alert("Please, fill method preparation!")

        }

        Recipe.update(req.body, function(){
            return res.redirect(`/admin/recipes/${req.body.id}`)
        })

        // const { id } = req.body
    
        // let index = 0
        // const foundRecipe = data.recipes.find(function(recipe, foundIndex) {
        //     if (id == recipe.id) {
        //         index = foundIndex
        //         return true
        //     }
        // })
        // if (!foundRecipe) return res.send("Recipe not found!")
    
        // const recipe = {
        //     ...foundRecipe,
        //     ...req.body,
        //     id: Number(req.body.id)
        // }
    
        // data.recipes[index] = recipe
    
        // fs.writeFile('data.json', JSON.stringify(data, null, 2), function(err){
        //     if (err) return res.send("DB Write error!")
    
        //     return res.redirect(`/admin/recipes/${id}`)
        // })
    },
    delete(req, res){
        Recipe.delete(req.body.id, function(){
            return res.redirect("/admin/recipes")
        })
        // const { id } = req.body 

        // const filteredRecipes = data.recipes.filter(function(recipe){
        //     return recipe.id != id
        // })
    
        // data.recipes = filteredRecipes
    
        // fs.writeFile("data.json", JSON.stringify(data, null, 2), function(err) {
        //     if (err) return res.send("Write file error")
    
        //     return res.redirect("/admin/recipes")
        // })
    }

}

// exports.adminIndex = function(req, res) {
//     return res.render("admin/recipes/index", {recipes : data.recipes})
// }
// // create recipes at admin/recipes/create
// exports.adminCreate = function(req, res) {
//     return res.render("admin/recipes/create")
// }
// // show recipes at admin/id/detail-recipe
// exports.adminShow = function(req, res) {
//     // const id = req.params.id //puxa o id e utilizo o recipeId no scripts

//     const { id } = req.params

//     const foundRecipe = data.recipes.find(function(recipe){
//         return id == recipe.id
//     })

//     if (!foundRecipe) return res.send("Recipe not found!")

    
//     // const recipe = {
//     //     ...foundRecipe,
//     //     instructions : foundRecipe.instructions.split(",")
//     // }

//     return res.render("admin/recipes/detail-recipe", {recipe : foundRecipe})
    
// }
// // create recipes at admin/create
// exports.adminPost = function(req, res) {
//     const keys = Object.keys(req.body)

//     for (key of keys) {
//         // if (req.body[key] == "") res.send("Please, fill all fields!") // using object.keys para acessar todos os atributos do
//         // req.body, image, ingredient, instruction, information
//         if (req.body.image == "") res.send("Please, fill image URL")
//         if (req.body.ingredients == "") res.send("Please, fill at least one ingridient")
//         if (req.body.instructions == "") res.send("Please, fill at least one instruction")
       
//     }
    
//     let {image, title, ingredients, instructions, information} = req.body // desestruturando os dados do reqbody para conseguir manipulá-los
//     // por isso usamos let, e nao, const

//     const id = Number(data.recipes.length + 1) // criando o id, e atribuindo o autoincrement nos data.json
//     const created_at = Date.now()

//     data.recipes.push({
//         id,
//         image,
//         title,
//         ingredients,
//         instructions,
//         information,
//         created_at
//     }) // puxando a variável data.json para add novamente, os dados inseridos no dom

//     fs.writeFile("data.json", JSON.stringify(data, null, 2), function(err){
//         if (err) return res.send("Write file error!")

//     })
//     return res.redirect("/admin/recipes/")
 
// }
// // edit recipes at admin/recipes/:id/edit
// exports.adminEdit = function (req, res){
//     const { id } = req.params
//     // separate id, from req.params.id

//     const foundRecipe = data.recipes.find(function(recipe) {
//     // search in data of recipes, recipes
//     return id == recipe.id
//     // compare id from the route, with id exists created.
//     // if find == true id, show
    
//     })

//     if (!foundRecipe) return res.send("Recipe not found!")
//         // if not found // return
//     const recipe = {
//         ...foundRecipe,
//         created_at : date(foundRecipe.created_at)
//     }    
    
//     return res.render("admin/recipes/edit", {  recipe   })
    
// }
// // edit recipes at admin/recipes/:id/ update function
// exports.adminPut = function (req, res) {
//     const { id } = req.body
    
//     let index = 0
//     const foundRecipe = data.recipes.find(function(recipe, foundIndex) {
//         if (id == recipe.id) {
//             index = foundIndex
//             return true
//         }
//     })
//     if (!foundRecipe) return res.send("Recipe not found!")

//     const recipe = {
//         ...foundRecipe,
//         ...req.body,
//         id: Number(req.body.id)
//     }

//     data.recipes[index] = recipe

//     fs.writeFile('data.json', JSON.stringify(data, null, 2), function(err){
//         if (err) return res.send("DB Write error!")

//         return res.redirect(`/admin/recipes/${id}`)
//     })

// }
// //delete
// exports.adminDelete = function(req, res) {
//     const { id } = req.body 

//     const filteredRecipes = data.recipes.filter(function(recipe){
//         return recipe.id != id
//     })

//     data.recipes = filteredRecipes

//     fs.writeFile("data.json", JSON.stringify(data, null, 2), function(err) {
//         if (err) return res.send("Write file error")

//         return res.redirect("/admin/recipes")
//     })

// }
