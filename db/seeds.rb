# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Admin", address: "Shinagawa-ku, Tokyo", gender: "LBGT", phone: "12345678", email: "admin@email.com", password: "123456", role: "admin")
Event.create([
    {
        name: "Trải nghiệm Yosakoi", 
        description: "Đây là sự kiện diễn ra nhằm giới thiệu cho các em thiếu nhi về 1 nét văn hoá của Nhật Bản", 
        place: "Hanoi", 
        start: Time.now, 
        end: Time.now, 
        hidden_status: false,
        age_filter: 1,
        pictures: "1.jpg",
    }, {
        name: "Học thử lớp vẽ Dũng Joon", 
        description: "Hãy tới và tham gia lớp vẽ! Chỉ 1 buổi duy nhất!", 
        place: "Hanoi", 
        start: Time.now, 
        end: Time.now, 
        hidden_status: false,
        age_filter: 5,
        pictures: "2.jpg",
    }, {
        name: "Chung kết cuộc thi hùng biện thiếu nhi", 
        description: "Sau 3 tháng tuyển chọn, 10 thí sinh có bài viết hay nhất đã lọt vào vòng chung kết", 
        place: "Hanoi", 
        start: Time.now, 
        end: Time.now, 
        hidden_status: false,
        age_filter: 6,
        pictures: "3.jpg",
    }
])
