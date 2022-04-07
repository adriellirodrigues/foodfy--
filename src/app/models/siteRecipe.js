const db = require('../../config/db')
const { date } = require('../../lib/utils')
const recipes = require('../controllers/siteRecipes')

module.exports = {
   index(callback){
        db.query(`SELECT recipes.*, chefs.name AS chef_name
        FROM recipes
        LEFT JOIN chefs ON(recipes.chef_id = chefs.id)`, function(err, results){
        if(err) throw `Database Error! ${err}`

        callback(results.rows)
        })
   },
   all(callback){
    db.query(`SELECT recipes.*, chefs.name AS chef_name
    FROM recipes
    LEFT JOIN chefs ON(recipes.chef_id = chefs.id)
    GROUP BY recipes.id
    ORDER BY recipes.title ASC`, function(err, results){
    if(err) throw `Database Error! ${err}`

    callback(results.rows)
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
   chefsSelectOptions(callback) {
    db.query(`SELECT name, id FROM chefs`, function(err, results) {
        if(err) throw `Database Error! ${err}`

        callback(results.rows)
         })
    },
    paginate(params) {
        let { filter, limit, offset, callback } = params

        let query = '',
            filterQuery = ''

        if (filter) {
            filterQuery = `
            WHERE recipes.title ILIKE '%${filter}%'
            `

            // totalQuery = `(
            //     SELECT count(*) FROM recipes
            //     ${filterQuery}
            // ) AS total`
        }

        query = `
        SELECT recipes.*, chefs.name AS chef_name
        FROM recipes
        LEFT JOIN chefs ON(recipes.chef_id = chefs.id)
        ${filterQuery}
        ORDER BY recipes.title ASC
        LIMIT $1 OFFSET $2
        `

        db.query(query, [limit, offset], function (err, results) {
            if (err) throw `Database error ${err}`

            callback(results.rows)
        })
    }
}