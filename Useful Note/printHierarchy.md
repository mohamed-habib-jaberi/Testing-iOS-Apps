# Testing-iOS-Apps

# printHierarchy :

(lldb) po [[[UIWindow keyWindow] rootViewController] _printHierarchy]

<UINavigationController 0x150053400>, state: appeared, view: <UILayoutContainerView 0x14fe278a0>
   | <LyfPay.SplashController 0x14fe27540>, state: disappeared, view: <UIView 0x15101a8a0> not in the window
   | <LyfPay.ContainerMenuController 0x14fe5c780>, state: disappeared, view: <UIView 0x14fe32a30> not in the window

   |    | <LyfPay.HomeController 0x14fe55d50>, state: disappeared, view: <UIView 0x14fe5d4a0> not in the window
   |    | <LyfPay.CloseMenuViewController 0x1510987a0>, state: disappeared, view: <UIView 0x14fe9e7d0> not in the window
   |    | <LyfPay.MenuViewController 0x14fe7b940>, state: disappeared, view: <UIView 0x14fe711e0> not in the window

   | <VouchersViewController 0x14fe73850>, state: appeared, view: <UIView 0x1510a4d70>




(lldb) po [[[UIWindow keyWindow] rootViewController] _printHierarchy]

<UINavigationController 0x10c062000>, state: appeared, view: <UILayoutContainerView 0x10bb18700>
   | <LyfPay.SplashController 0x10bb30320>, state: disappeared, view: <UIView 0x10b927b20> not in the window

   | <LyfPay.ContainerMenuController 0x10bb6c700>, state: disappeared, view: <UIView 0x10b976f00> not in the window

   |    | <LyfPay.HomeController 0x10bb642c0>, state: disappeared, view: <UIView 0x10b964600> not in the window

   | <VouchersViewController 0x10bb761f0>, state: appeared, view: <UIView 0x10b941800>


https://www.google.fr/search?q=%5B%5B%5BUIWindow+keyWindow%5D+rootViewController%5D+_printHierarchy%5D&sxsrf=APq-WBvR8HJhi8Ugw7IZFqfT-a6n-TWbPA%3A1645175506030&source=hp&ei=0WIPYq31PMeNlwTq5onQAQ&iflsig=AHkkrS4AAAAAYg9w4kSvWxV_Jw_7LgWTHHLV76Oq0E8j&ved=0ahUKEwjtoYOt9Ij2AhXHxoUKHWpzAhoQ4dUDCAc&uact=5&oq=%5B%5B%5BUIWindow+keyWindow%5D+rootViewController%5D+_printHierarchy%5D&gs_lcp=Cgdnd3Mtd2l6EANQAFgAYJYGaABwAHgAgAF5iAF5kgEDMC4xmAEAoAECoAEB&sclient=gws-wiz



      
