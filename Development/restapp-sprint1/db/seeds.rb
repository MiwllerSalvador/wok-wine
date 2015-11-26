# Delete existing products and categories

Product.delete_all
Category.delete_all

# Categories

Category.create(name: 'Appetizers', description: 'Start in the best way')
Category.create(name: 'Chicken', description: 'Served with fried rice, choice of egg drop soup')
Category.create(name: 'Vegetables', description: 'With white rice')
Category.create(name: 'Beverages')
Category.create(name: 'Wines', description: 'Our exclusive wine selection')

# Products

Product.create(name: 'Spring Roll',                
               description: 'Mini Spring Roll with 10 pieces',                
               category: Category.find_by(name: 'Appetizers'),               
               picture: File.open("#{Rails.root}/public/spring-roll.jpg"))

Product.create(name: 'Moo Goo Gai Pan',               
               category: Category.find_by(name: 'Vegetables'),               
               picture: File.open("#{Rails.root}/public/moo-goo-gai-pan.jpg"))

Product.create(name: 'Ma Po ToFu',               
               category: Category.find_by(name: 'Vegetables'),               
               picture: File.open("#{Rails.root}/public/ma-po-tofu.jpg"))

Product.create(name: 'Homemade Sweet Tea',               
               category: Category.find_by(name: 'Beverages'),               
               picture: File.open("#{Rails.root}/public/homemade-sweet-tea.png"))


Product.create(name: 'Koshu',                
               description: 'The first wine in Japan',               
               category: Category.find_by(name: 'Wines'),               
               picture: File.open("#{Rails.root}/public/koshu.jpg"))  
