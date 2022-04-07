const { Pool } = require('pg')

module.exports = new Pool({
    user:'adriellirodrigues',
    password:"",
    host:"localhost",
    port:"5432",
    database:"db_foodfy"

})