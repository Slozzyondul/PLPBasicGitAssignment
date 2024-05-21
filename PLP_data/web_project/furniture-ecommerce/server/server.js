const express = require('express');
const path = require('path');
const productRoutes = require('./routes/productRoutes');
const app = express();

app.use(express.json());

// Serve static files from the 'client' directory
app.use(express.static(path.join(__dirname, 'client')));

// Define a route to handle requests to the root URL
app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'client', 'index.html'));
});

// Define API routes
app.use('/api/products', productRoutes);

app.post('/api/checkout', (req, res) => {
    const { name, address, email, cart } = req.body;
    // Here you would handle the checkout process (e.g., saving the order to the database, processing payment, etc.)
    console.log('Order received:', { name, address, email, cart });
    res.status(201).json({ message: 'Order placed successfully!' });
});

// Start the server
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});
