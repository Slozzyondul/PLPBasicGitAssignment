def calculate_discount(price, discount_parcent):
    marked_price = int(input("enter the original marked price of the item: "))
    discount = int(input("enter discount percantage value: "))
    discount_value = (discount/100)*marked_price

    x = (discount_value/marked_price)*100 #percantage discount
 
    print("your discount amount is: ", discount_value)
    print("your percentage discount is: ", x)

    if x > 20:
        print("discount will be applied shortly...")
        y = marked_price - discount_value
        print("your new buying price is: ", y)
    elif x == 20:
        print("discount will be applied shortly...")
        w = marked_price - discount_value
        print("your new buying price is: ", w)
    
    else:
        print("your percentage discount is below 20%/ of the marked price no discount for you")


price = None
discount = None


calculate_discount(price, discount)

 