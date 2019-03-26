# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Admin", address: "Shinagawa-ku, Tokyo", gender: Faker::Gender.binary_type, phone: Faker::PhoneNumber.phone_number, email: "admin@email.com", password: "123456", role: "admin")

20.times do
    User.create(
        name: Faker::Name.name,
        address: Faker::Address.full_address,
        gender: Faker::Gender.binary_type,
        phone: Faker::PhoneNumber.phone_number,
        email: Faker::Internet.email,
        password: "123456789",
        role: "user",
    )
end

events = Event.create([
    {
        name: "Trải nghiệm Yosakoi", 
        description: "Đây là sự kiện diễn ra nhằm giới thiệu cho các em thiếu nhi về 1 nét văn hoá của Nhật Bản", 
        place: "Hanoi", 
        start: Time.now, 
        end: Time.now, 
        hidden_status: false,
        age_filter: 1,
    }, {
        name: "Học thử lớp vẽ Dũng Joon", 
        description: "Hãy tới và tham gia lớp vẽ! Chỉ 1 buổi duy nhất!", 
        place: "Hanoi", 
        start: Time.now, 
        end: Time.now, 
        hidden_status: false,
        age_filter: 5,
    }, {
        name: "Chung kết cuộc thi hùng biện thiếu nhi", 
        description: "Sau 3 tháng tuyển chọn, 10 thí sinh có bài viết hay nhất đã lọt vào vòng chung kết", 
        place: "Hanoi", 
        start: Time.now, 
        end: Time.now, 
        hidden_status: false,
        age_filter: 6,
    }
])
events[0].pictures.attach([
    {
        io: File.open(Rails.root.join('app', 'assets', 'images', 'events', '1.jpg')), 
        filename: '1.jpg',
    }, {
        io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'img0183-15220782296711431315793.jpg')), 
        filename: 'img0183-15220782296711431315793.jpg',
    }
])
events[1].pictures.attach([io: File.open(Rails.root.join('app', 'assets', 'images', 'events', '2.jpg')), filename: '2.jpg'])
events[2].pictures.attach([io: File.open(Rails.root.join('app', 'assets', 'images', 'events', '3.jpg')), filename: '3.jpg'])

# chuẩn bị lại dữ liệu
# đặc tả người quản lý => hỏi công ty bên Nhật
