const { Sequelize } = require('sequelize');
const sequelize = new Sequelize('furniture_ecommerce', 'username', 'password', {
    host: 'localhost',
    dialect: 'mysql'
});

sequelize.sync()
    .then(() => console.log('Database synchronized'))
    .catch(err => console.error('Database sync error:', err));

module.exports = sequelize;
