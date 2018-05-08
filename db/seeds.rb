# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if User.all.size == 0
  u = User.new
  u.email = "myohmy10420@gmail.com"

  u.password = "111111"

  u.password_confirmation = "111111"

  u.is_admin = true
  u.save
  puts "Add User"
end

creator_id = User.find_by(email: "myohmy10420@gmail.com").try(:id) || 1

Product.create!(
  title: "Macbook pro",
  description: "九成新二手蘋果筆電未過保",
  quantity: 2,
  price: 40000,
  category: "電腦硬體",
  image: open("https://i.guim.co.uk/img/media/4371417c1b5e8fab6bb9f05904d260d40dc18f82/133_0_4175_2505/master/4175.jpg?w=1920&q=55&auto=format&usm=12&fit=max&s=191e5d87d7c6fce47bb31e7bcc9ad5cd")
)

puts "Added Macbook pro"

Product.create!(
  title: "iPad pro",
  description: "全新iPad pro 10.5吋 銀色 256GB",
  quantity: 12,
  price: 21000,
  category: "電腦硬體",
  image: open("https://store.storeimages.cdn-apple.com/4974/as-images.apple.com/is/image/AppleInc/aos/published/images/i/pa/ipad/pro/ipad-pro-select-scene2-201706-i1?wid=474&hei=385&fmt=jpeg&qlt=95&op_usm=0.5,0.5&.v=1505500524375")
)

puts "Added iPad pro"

Product.create!(
  title: "ASUS B9440",
  description: "ASUS B9440 14吋窄邊框商用筆電(i7-7500U/512G/16G/FHD霧",
  quantity: 6,
  price: 44900,
  category: "電腦硬體",
  image: open("https://s.yimg.com/wb/images/EFDAD31E91A4ECEEDD0B2284D2F8D5C5BFE8B20C")
)

puts "Added ASUS B9440"

Product.create!(
  title: "SONY MDR-1ABT無線耳機",
  description: "",
  quantity: 2,
  price: 25000,
  category: "週邊設備",
  image: open("http://www.sony.com/is/image/gwtprod/b370827b287d6627cd6af8ddf3c23009?fmt=pjpeg&wid=1014&hei=396&bgcolor=F1F5F9&bgc=F1F5F9")
)

puts "Added SONY MDR-1ABT無線耳機"

Product.create!(
  title: "ROCCAT Ryos MK FX RGB機械式鍵盤|茶軸英文",
  description: "您在為自己的電競軍火庫找尋完美武器時，想要的是帥氣還是好用？ROCCAT 讓您能兩者兼顧。Ryos MK FX 專為資深玩家設計，是市場上最先進的機械式電競鍵盤。Ryos MK FX 完全發揮了 ROCCAT 的業界專長與電競經驗，配有令人嫉妒的完整功能與設計，以及 1,680 萬色的全鍵 RGB 發光功能，讓對手難望項背。",
  quantity: 20,
  price: 6000,
  category: "週邊設備",
  image: open("http://www.inpad.com.tw/data/goods/0079_1458727541NTOGP0.jpg")
)

puts "Added ROCCAT Ryos MK FX RGB機械式鍵盤|茶軸英文"

Product.create!(
  title: "【KTNET】X7變形金剛可程式電競滑鼠",
  description: "贈 原廠大鼠墊",
  quantity: 10,
  price: 1400,
  category: "週邊設備",
  image: open("http://a.ecimg.tw/items/DCAN2SA9007SULO/000001_1484020306.jpg")
)

puts "Added 【KTNET】X7變形金剛可程式電競滑鼠"

Product.create!(
  title: "【美國Herman Miller】Aeron人體工學辦公椅",
  description: "(獨家基本款-直條紋)(B size) 原廠10年保固",
  quantity: 1,
  price: 28000,
  category: "週邊設備",
  image: open("https://a.ecimg.tw/items/DCAK8JA90081M04/000001_1523350011.jpg")
)

puts "Added 【美國Herman Miller】Aeron人體工學辦公椅"

Product.create!(
  title: "毛绒仓鼠变身水果公仔",
  description: "创意新品毛绒仓鼠变身水果公仔办公室抱枕二合一空调被抱枕礼物",
  quantity: 16,
  price: 400,
  category: "辦公室擺設",
  image: open("https://cbu01.alicdn.com/img/ibank/2018/046/302/8595203640_1300967345.400x400.jpg")
)

puts "Added 毛绒仓鼠变身水果公仔"

Product.create!(
  title: "软体恐龙毛绒玩具公仔",
  description: "软体恐龙毛绒玩具公仔儿童玩偶生日礼物批发定制一件代发举报本产品支持七天无理由退货",
  quantity: 12,
  price: 500,
  category: "辦公室擺設",
  image: open("https://cbu01.alicdn.com/img/ibank/2018/213/428/8762824312_1113646980.400x400.jpg")
)

puts "Added 软体恐龙毛绒玩具公仔"

