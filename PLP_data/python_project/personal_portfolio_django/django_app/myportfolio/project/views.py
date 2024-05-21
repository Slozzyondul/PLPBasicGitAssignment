from django.shortcuts import render

# Create your views here.
def home_screen(request):
    print(request.headers)
    return render (request, 'index.html', {})


def about_screen(request):
    print(request.headers)
    return render (request, 'about.html', {})


def blog_screen(request):
    print(request.headers)
    return render (request, 'blog.html', {})


def cart_screen(request):
    print(request.headers)
    return render (request, 'cart.html', {})


def checkout_screen(request):
    print(request.headers)
    return render (request, 'checkout.html', {})


def contact_screen(request):
    print(request.headers)
    return render (request, 'contact.html', {})


def services_screen(request):
    print(request.headers)
    return render (request, 'services.html', {})


def shop_screen(request):
    print(request.headers)
    return render (request, 'shop.html', {})


def thankyou_screen(request):
    print(request.headers)
    return render (request, 'thankyou.html', {})

