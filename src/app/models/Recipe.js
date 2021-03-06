const db = require('../../config/db')
const { date } = require('../../lib/utils')
const recipes = require('../controllers/recipes')

module.exports = {
   all(callback){
        db.query(`SELECT recipes.*, chefs.name AS chef_name
        FROM recipes
        LEFT JOIN chefs ON(recipes.chef_id = chefs.id)`, function(err, results){
        if(err) throw `Database Error! ${err}`

        callback(results.rows)
        })
   }, 
   create(data, callback) {
            const query = `
            INSERT INTO recipes(
                image,
                chef_id,
                title,
                ingredients,
                instructions,
                information,
                created_at
            ) VALUES    ($1, $2, $3, $4, $5, $6, $7)
            RETURNING id
        `

        const values = [
            data.image,
            data.chef,
            data.title,
            data.ingredients,
            data.instructions,
            data.information,
            date(Date.now()).iso
        ]

        db.query(query, values, function(err, results){
            if(err) throw `Database Error! ${err}`

            callback(results.rows[0])
        })
   },
   find(id, callback){
        db.query(`
            SELECT recipes.*, chefs.name AS chef_name
            FROM recipes
            LEFT JOIN chefs ON(recipes.chef_id = chefs.id)
            WHERE recipes.id = $1`,[id], function(err, results){
            if(err) throw `Database Error! ${err}`
                
                callback(results.rows[0])
            })
   },
   update(data, callback){
       const query = `UPDATE recipes SET
                        image = ($1),
                        chef_id = ($2),
                        title = ($3),
                        ingredients = ($4),
                        instructions = ($5),
                        information = ($6)
                    WHERE id = $7`
       const values = [
           data.image,
           data.chef,
           data.title,
           data.ingredients,
           data.instructions,
           data.information,
           data.id
       ]
       db.query(query, values, function(err, results){
           if(err) throw `Database Error! ${err}`

           callback()
       })
   },
   chefsSelectOptions(callback) {
    db.query(`SELECT name, id FROM chefs`, function(err, results) {
        if(err) throw `Database Error! ${err}`

        callback(results.rows)
         })
    },
    delete(id, callback) {
        db.query(`DELETE FROM recipes WHERE id = $1`,
        [id], function(err, results){
            if(err) throw `Database Error! ${err}`

            callback()
        })
    }

}