// scripts.js
document.addEventListener('DOMContentLoaded', () => {
    let cart = JSON.parse(localStorage.getItem('cart')) || [];
    updateCartCount();
    displayCartItems();

    fetch('/api/products')
        .then(response => response.json())
        .then(data => {
            const productsSection = document.getElementById('products');
            data.forEach(product => {
                const productDiv = document.createElement('div');
                productDiv.classList.add('product');
                productDiv.innerHTML = `
                    <h3>${product.name}</h3>
                    <p>Price: $${product.price.toFixed(2)}</p>
                    <button class="add-to-cart" data-id="${product.id}">Add to Cart</button>
                `;
                productsSection.appendChild(productDiv);
            });

            document.querySelectorAll('.add-to-cart').forEach(button => {
                button.addEventListener('click', (e) => {
                    const productId = e.target.dataset.id;
                    const product = data.find(p => p.id == productId);
                    addToCart(product);
                });
            });
        })
        .catch(error => console.error('Error fetching products:', error));
});

function addToCart(product) {
    let cart = JSON.parse(localStorage.getItem('cart')) || [];
    const existingProduct = cart.find(item => item.id === product.id);

    if (existingProduct) {
        existingProduct.quantity += 1;
    } else {
        product.quantity = 1;
        cart.push(product);
    }

    localStorage.setItem('cart', JSON.stringify(cart));
    updateCartCount();
    displayCartItems();
}

function updateCartCount() {
    let cart = JSON.parse(localStorage.getItem('cart')) || [];
    const cartCount = cart.reduce((acc, product) => acc + product.quantity, 0);
    document.getElementById('cart-count').textContent = cartCount;
}

function displayCartItems() {
    let cart = JSON.parse(localStorage.getItem('cart')) || [];
    const cartItemsDiv = document.getElementById('cart-items');

    if (cart.length === 0) {
        cartItemsDiv.innerHTML = '<p>Your cart is empty.</p>';
        document.getElementById('checkout-button').disabled = true;
    } else {
        cartItemsDiv.innerHTML = '';
        cart.forEach(product => {
            const productDiv = document.createElement('div');
            productDiv.classList.add('cart-item');
            productDiv.innerHTML = `
                <h3>${product.name}</h3>
                <p>Price: $${product.price.toFixed(2)}</p>
                <p>Quantity: ${product.quantity}</p>
                <button class="remove-from-cart" data-id="${product.id}">Remove</button>
            `;
            cartItemsDiv.appendChild(productDiv);
        });

        document.querySelectorAll('.remove-from-cart').forEach(button => {
            button.addEventListener('click', (e) => {
                const productId = e.target.dataset.id;
                removeFromCart(productId);
            });
        });

        document.getElementById('checkout-button').disabled = false;
    }
}

function removeFromCart(productId) {
    let cart = JSON.parse(localStorage.getItem('cart')) || [];
    cart = cart.filter(product => product.id != productId);
    localStorage.setItem('cart', JSON.stringify(cart));
    updateCartCount();
    displayCartItems();
}

document.getElementById('checkout-form').addEventListener('submit', (e) => {
    e.preventDefault();

    const name = document.getElementById('name').value;
    const address = document.getElementById('address').value;
    const email = document.getElementById('email').value;
    const cart = JSON.parse(localStorage.getItem('cart')) || [];

    const order = {
        name,
        address,
        email,
        cart
    };

    fetch('/api/checkout', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(order)
    })
    .then(response => response.json())
    .then(data => {
        alert('Order placed successfully!');
        localStorage.removeItem('cart');
        updateCartCount();
        displayCartItems();
    })
    .catch(error => console.error('Error placing order:', error));
});
