const { Sequelize } = require('sequelize');
const sequelize = new Sequelize('ecommerce', 'solo1', 's', {
    host: 'localhost',
    dialect: 'mariadb', // Ensure this is "mariadb"
});

sequelize.sync()
    .then(() => console.log('Database synchronized'))
    .catch(err => console.error('Database sync error:', err));

module.exports = sequelize;
