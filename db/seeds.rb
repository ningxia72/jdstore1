# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Initialize Admin User
if User.find_by(email: "xia@test.com").nil?
  u = User.new
  u.email = "xia@test.com"           # 可以改成自己的 email
  u.password = "123456"                # 最少要六码
  u.password_confirmation = "123456"   # 最少要六码
  u.is_admin = true
  u.save
  puts "Admin 已经建立好了，帐号为#{u.email}, 密码为#{u.password}"
else
  puts "Admin 已经建立过了，脚本跳过该步骤。"
end


# Initialize Product

Product.create!(title: "5斤装火龙果",
description: "5斤装",
price: 138,
quantity: 5,
image: open("http://oous4398f.bkt.clouddn.com/uploads/product/image/3/thumb_%E5%86%9C%E5%9C%BA%E7%BA%A2%E6%9E%9C.JPG")
)

Product.create!(title: "9斤装火龙果",
description: "9斤装",
price: 198,
quantity: 5,
image: open("http://oous4398f.bkt.clouddn.com/uploads/product/image/4/thumb_%E6%80%9D%E6%85%95%E9%9B%AA.png")
)

Product.create!(title: "冰沙",
description: "美味可口养颜",
price: 68,
quantity: 5,
image: open("http://oous4398f.bkt.clouddn.com/%E5%86%B0%E6%B2%99.jpg")
)
Product.create!(title: "果园的清晨",
description: "富含微量元素的土地",
price: 88888,
quantity: 0,
image: open("http://oous4398f.bkt.clouddn.com/%E6%9E%9C%E5%9B%AD%E5%85%A8%E6%99%AF")
)
