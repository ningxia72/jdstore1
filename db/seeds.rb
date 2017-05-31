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
image: open("http://ww1.sinaimg.cn/large/006tNc79gy1fg3qjmmizgj30rb0hokfu.jpg")
)

Product.create!(title: "9斤装火龙果",
description: "9斤装",
price: 198,
quantity: 5,
image: open("http://ww4.sinaimg.cn/large/006tNc79gy1fg4owd4ezvj31031xzkjm.jpg")
)

Product.create!(title: "冰沙",
description: "美味可口养颜",
price: 68,
quantity: 5,
image: open("http://ww1.sinaimg.cn/large/006tNc79gy1fg3qjmmizgj30rb0hokfu.jpg)
")
)
Product.create!(title: "果园的清晨",
description: "富含微量元素的土地",
price: 88888,
quantity: 0,
image: open("http://ww4.sinaimg.cn/large/006tNc79gy1fg4owd4ezvj31031xzkjm.jpg")
)
