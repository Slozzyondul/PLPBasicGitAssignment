#line plot
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, 10, 100)
y = np.sin(x)
plt.plot(x,y)
plt.xlabel('x')
plt.ylabel('y')
plt.title('line plot of sin(x)')
plt.show()


#scatter plot
x = np.random.randn(100)
y = np.random.randn(100)
plt.scatter(x,y)
plt.xlabel('x')
plt.ylabel('y')
plt.title('scatter plot of random data')
plt.show()


#bar chart
x = ['apples', 'bananas', 'oranges']
y = [10,7,15]
plt.bar(x,y)
plt.xlabel('fruit')
plt.ylabel('quantity')
plt.title('bar chart of fruit quantities')
plt.show()

#histogram
data = np.random.randn(1000)
plt.hist(data, bins=30)
plt.xlabel('value')
plt.ylabel('frequency')
plt.title('histogram of random data')

#subplots
x = np.linspace(0,10,100)
y1 = np.sin(x)
y2 = np.cos(x)
fig, (ax1, ax2) = plt.subplot(2,1, figsize=(8,6))
ax1.plot(x,y1)
ax1.set_xlabel('x')
ax1.set_ylabel('sin(x)')
ax1.set_title('line plot of cos(x)')

ax2.plot(x, y2)
ax2.set_xlabel('x')
ax2.set_ylabel('cos(x)')
ax2.set_title('line plot of cos(x)')

plt.tight_layout()
plt.show()