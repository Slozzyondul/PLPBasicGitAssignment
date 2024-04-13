from django.shortcuts import render

# Create your views here.
def home_screen(request):
    print(request.headers)
    return render (request, 'index.html', {})

# Create your views here.
def about_screen(request):
    print(request.headers)
    return render (request, 'about.html', {})

# Create your views here.
def contact_screen(request):
    print(request.headers)
    return render (request, 'contact.html', {})

# Create your views here.
def courses_screen(request):
    print(request.headers)
    return render (request, 'courses.html', {})

# Create your views here.
def elements_screen(request):
    print(request.headers)
    return render (request, 'elements.html', {})

# Create your views here.
def news_screen(request):
    print(request.headers)
    return render (request, 'news.html', {})

def instructors_screen(request):
    print(request.headers)
    return render (request, 'instructors.html', {})

def blog_screen(request):
    print(request.headers)
    return render (request, 'blog.html', {})

