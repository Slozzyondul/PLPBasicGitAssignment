const express = require('express');
const router = express.Router();
const productController = require('../controllers/productController');

// Define the routes
router.get('/', productController.getAllProducts); // Get all products
router.post('/', productController.createProduct); // Create a new product
router.put('/:id', productController.updateProduct); // Update a product
router.delete('/:id', productController.deleteProduct); // Delete a product

module.exports = router;
