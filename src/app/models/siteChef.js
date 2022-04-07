const db = require('../../config/db')
const { date } = require('../../lib/utils')

module.exports = {
    all(callback){
        db.query(`
        SELECT chefs.*, COUNT(recipes) AS total_recipes
        FROM chefs
        LEFT JOIN recipes ON (recipes.chef_id = chefs.id)
        GROUP BY chefs.id
        ORDER BY chefs.name ASC`, function(err, results){
                if(err) throw `Database Error! ${err}`

               return callback(results.rows)
        })
    },
    find(id, callback) {
        db.query(`
        SELECT chefs.*, COUNT(recipes) AS total_recipes
        FROM chefs
        LEFT JOIN recipes ON (recipes.chef_id = chefs.id)
        WHERE chefs.id = $1
        GROUP BY chefs.id`, [id], function(err, results){
                if(err) throw `Database Error! ${err}`

                callback(results.rows[0])
            })
    },
    findChefRecipes(id, callback) {
        db.query(`
            SELECT *
            FROM recipes
            LEFT JOIN chefs ON (recipes.chef_id = chefs.id)
            WHERE chefs.id = $1`, [id], function(err, results) {
                if(err) throw `Database error! + ${err}`
    
                callback(results.rows)
            })
        }
}