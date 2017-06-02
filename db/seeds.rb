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

# User.create!(name: 'admin', email: 'xia@test.com', password: '123456', password_confirmation: '123456', is_admin: true)

# Initialize Product

Product.create!(title: "5斤装火龙果",
description: "5斤装",
price: 138,
quantity: 5,
img_url: "https://cdn.shopify.com/s/files/1/0710/5755/files/Pitaya-Smooothie.jpg?14261920647843852612"
)

Product.create!(title: "9斤装火龙果",
description: "9斤装",
price: 198,
quantity: 5,
img_url: "http://ww3.sinaimg.cn/large/006tKfTcgy1fg4vkl0p4cj30dw0dw75a.jpg"
)

Product.create!(title: "冰沙",
description: "美味可口养颜",
price: 68,
quantity: 5,
img_url: "https://s-media-cache-ak0.pinimg.com/564x/be/29/47/be2947e7fc3dc4ae77cbc46e74351d6f.jpg"
)

Product.create!(title: "果园的清晨",
description: "富含微量元素的土地",
price: 88888,
quantity: 0,
img_url: "http://ww3.sinaimg.cn/large/006tKfTcgy1fg4vkl0p4cj30dw0dw75a.jpg"
)
