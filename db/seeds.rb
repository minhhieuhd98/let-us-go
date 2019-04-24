# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name: "Admin", address: "Shinagawa-ku, Tokyo", gender: Faker::Gender.binary_type, phone: Faker::PhoneNumber.phone_number, email: "admin@email.com", password: "123456", role: "admin")
User.create!(
    name: Faker::Name.name,
    address: Faker::Address.full_address,
    gender: Faker::Gender.binary_type,
    phone: Faker::PhoneNumber.phone_number,
    email: "quan@email.com",
    password: "123456",
    role: "user",
)

20.times do
    User.create!(
        name: Faker::Name.name,
        address: Faker::Address.full_address,
        gender: Faker::Gender.binary_type,
        phone: Faker::PhoneNumber.phone_number,
        email: Faker::Internet.email,
        password: "123456",
        role: "user",
    )
end

places = Place.create!([
    {
        name: "Công viên thống nhất",
        description: "Nằm tại vị trí rất đẹp, tiếp giáp giữa 4 con phố Đại Cồ Việt, Lê Duẩn, Trần Nhân Tông và Nguyễn Đình Chiểu… hoạt động chính của công viên Thống Nhất là chăm sóc vườn hoa, thảm cỏ để phục vụ nhu cầu tham quan, vui chơi giải trí, thư giãn của người dân và khách du lịch. Công viên cũng được sử dụng cho thuê tổ chức các sự kiện và cho thuê kinh doanh một số nhà hàng bên trong khuôn viên…  ",
        latitude: "21.011816",
        longitude: "105.843592",
    },
    {
        name: "Rạp xiếc trung ương",
        description: "Rạp xiếc trung ương là nơi gắn rất nhiều tới kỉ niệm tuổi thơ",
        latitude: "21.017357",
        longitude: "105.842347",
    },
    {
        name: "Phố đi bộ Hà Nội",
        description: "Đến thời điểm hiện tại, phố đi bộ Hà Nội quanh Hồ Gươm đã và đang dần trở thành một trong những điểm nhấn du lịch của thủ đô, là nơi để mọi người hẹn hò, vui chơi, và chậm lại giữa những con đường hối hả đông đúc.",
        latitude: "21.029914",
        longitude: "105.853507",
    },
    {
        name: "Lăng Chủ Tịch Hồ Chí Minh",
        description: "Lăng chủ tịch Hồ Chí Minh, địa điểm thu hút khách du lịch nổi tiếng Hà Nội",
        latitude: "21.029914",
        longitude: "105.853507",
    },
    {
        name: "Hoàng Thành Thăng Long",
        description: "Địa điểm văn hóa lịch sử, nghìn năm văn hiến",
        latitude: "21.029914",
        longitude: "105.853507",
    },
    {
        name: "Vịnh Hạ Long",
        description: "Danh Lam thắng cảnh, một trong 7 kì quan thế giới",
        latitude: "20.8437292",
        longitude: "107.0095396",
    },
    {
        name: "Bãi biển Nha Trang",
        description: "Bạn muốn tắm biển, hãy tới Nha Trang",
        latitude: "12.2597701",
        longitude: "109.106413",
    },
    {
        name: "Phú Quốc",
        description: "Thiên đường nghĩ dưỡng",
        latitude: "10.2294015",
        longitude: "103.6772185",
    },
    {
        name: "Côn Sơn, Chí Linh",
        description: "Vùng đất địa linh nhân kiệt!!!",
        latitude: "21.1492745",
        longitude: "106.380858",
    },
    {
        name: "Đà Lạt",
        description: "Thành Phố của những cặp đôi thích chia tay",
        latitude: "11.9040702",
        longitude: "108.3806815",
    },
    {
        name: "Sầm Sơn, Thanh Hóa",
        description: "Bạn muốn thưởng thức những muốn hải sản thơm ngon, hãy đến với Sầm Sơn",
        latitude: "19.7519955",
        longitude: "105.8729829",
    },
    {
        name: "Chùa Bái Đính, Ninh Bình",
        description: "Trung tâm Phật Giáo Việt Nam",
        latitude: "20.2761587",
        longitude: "105.8627744",
    },
    {
        name: "Tam Đảo, Vĩnh Phúc",
        description: "Không gian mát mẻ, thích hợp những chuyến đi ngắn cuối tuần cùng Gia đình, bạn bè",
        latitude: "21.4553802",
        longitude: "105.447376",
    },
    {
        name: "Làng gốm Bát Tràng",
        description: "Cái nôi của nghề gốm sứ Việt Nam",
        latitude: "20.9761368",
        longitude: "105.9115487",
    },
    {
        name: "Chùa Hương",
        description: "Du lịch tâm linh",
        latitude: "20.6189476",
        longitude: "105.7456026",
    },
    {
        name: "Chùa Một Cột",
        description: "Di tích thắng cảnh",
        latitude: "21.0358615",
        longitude: "105.8314297",
    },
    {
        name: "Hồ Ba Bể",
        description: "Cảnh quan thiên nhiên hùng vĩ, nước non trùng điệp",
        latitude: "22.4203528",
        longitude: "105.5808538",
    },
    {
        name: "Hoàng thành Huế",
        description: "Xứ Huệ mộng mơ",
        latitude: "16.4535435",
        longitude: "107.5070721",
    },
    {
        name: "Thành phố Đà Nẵng",
        description: "Festival Du lịch, thành phố du lịch miền Trung",
        latitude: "16.0472484",
        longitude: "108.1716863",
    },
    {
        name: "Vườn quốc gia Ba Vì",
        description: "Không có gì tuyệt vời hơn khi hòa mình vào không gian thiên nhiên nơi đây",
        latitude: "21.0822394",
        longitude: "105.3674493",
    },
    {
        name: "Thung Lũng Mường Hoa",
        description: "Thung lũng xinh đẹp nổi tiếng với những lối đi leo bộ xuyên qua những thửa ruộng bậc thang & làng cổ.",
        latitude: "22.3282987",
        longitude: "103.8454444",
    },
    {
        name: "Sapa, Lào Cai",
        description: "Khí hậu ôn hòa, mát mẻ...",
        latitude: "22.3476867",
        longitude: "103.7819187",
    },
#    viet 50 cai place
])
events = Event.create!([
    {
        name: "Trải nghiệm Yosakoi",
        description: "Đây là sự kiện diễn ra nhằm giới thiệu cho các em thiếu nhi về 1 nét văn hoá của Nhật Bản",
        place_id: 3,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 1,
    }, {
        name: "Dã ngoại ở công viên Thống Nhất",
        description: "Với cây xanh và hồ trong sạch, cùng trải nghiệm các hoạt động ngoài trời",
        place_id: 1,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 5,
    }, {
        name: "Chương tình xiếc đặc biệt",
        description: "Chương trình có sự tham gia của rất nhiều nghệ sĩ xiếc nổi tiếng trong và ngoài nước. Giữa chương trình có các tiết mục biểu diễn hài và ca nhạc. Buổi diễn chỉ bán vé cho các gia đình có con nhỏ",
        place_id: 2,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Tham quan lăng Chủ Tịch Hồ Chí Minh",
        description: "129 năm ngày sinh Chủ Tịch Hồ Chí Minh(19/5/1890-19/5/2019)",
        place_id: 4,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Hội Sách Thăng Long",
        description: "Lễ hội Sách Mùa Xuân",
        place_id: 5,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Carnaval Du Lịch Hạ Long 2018",
        description: "Lễ hội của Biển",
        place_id: 6,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Festival Du Lịch Biển Nha Trang",
        description: "Tháng Du lịch Hè",
        place_id: 7,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Du Lịch Biển Phú Quốc",
        description: "Lễ Khai Mạc Du Lịch biển Phú Quốc",
        place_id: 8,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Lễ hội Côn Sơn-Kiếp Bạc",
        description: "Khai mạc lễ hội Côn Sơn Kiếp Bạc, Chí Linh Hải Dương",
        place_id: 9,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Festival Hoa Đà Lạt",
        description: "Lễ hội Hoa Đà Lạt 2018",
        place_id: 10,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Festival Du lịch Sầm Sơn",
        description: "Khai mạc Lễ hội Biển Sầm Sơn",
        place_id: 11,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Lễ Hội Chùa Bái Đính",
        description: "Du xuân đầu năm, cầu mong năm mới may mắn",
        place_id: 12,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Cắm trại cùng gia đình ở Tam Đảo",
        description: "Tam Đảo, địa điểm cắm trại lý tưởng cuối tuần",
        place_id: 13,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Trải nghiểm Làm Gốm",
        description: "Những nét đẹp truyền thống cần được giữ gìn",
        place_id: 14,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Lễ Hội chùa Hương",
        description: "Lễ hội lớn nhất đồng bằng sông Hồng",
        place_id: 15,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Tham quan du lịch chùa một cột",
        description: "Địa điểm du lịch văn hóa lịch sử Hà Nội",
        place_id: 16,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "ngắm cảnh hồ ba bể",
        description: "Cùng nhau khám phá, thăm quan du lịch sinh thái hồ ba bể",
        place_id: 17,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    },  {
        name: "Khai mạc du lịch miền Trung",
        description: "Khai mạc tháng du lịch miền trung",
        place_id: 18,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Khai mạc pháo hoa quốc tế Đà Nẵng",
        description: "Sắc đẹp Pháo hoa, cùng chiêm ngưỡng những màn pháo hoa đẹp sắc",
        place_id: 19,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Cắm trại Ba Vì",
        description: "Một địa điểm khác cho những chuyến đi du lịch cuối tuần gần Hà Nội",
        place_id: 20,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Trải nghiệm ngắm cảnh mường hoa",
        description: "Cùng bạn bè ngắm cảnh trên cao bằng cáp treo, một trải nghiệm khó quên",
        place_id: 21,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }, {
        name: "Chợ phiên vùng cao",
        description: "Cùng nhau đi chợ phiên!",
        place_id: 22,
        start: Time.now.next_week,
        end: Time.now.next_month,
        hidden_status: false,
        age_filter: 6,
    }
    # 50 cai event
])
# event tu 0 den 50. moi event them lay 1 anh
events[0].pictures.attach([
    {
        io: File.open(Rails.root.join('app', 'assets', 'images', 'events', '1.jpg')),
        filename: '1.jpg',
    }, {
        io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'img0183-15220782296711431315793.jpg')),
        filename: 'img0183-15220782296711431315793.jpg',
    }
])
events[2].pictures.attach([
    {
        io: File.open(Rails.root.join('app', 'assets', 'images', 'events', '3.jpg')),
        filename: '3.jpg'
    }, {
        io: File.open(Rails.root.join('app', 'assets', 'images', 'events', '4.jpg')),
        filename: '4.jpg',
    }
])
events[1].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', '2.jpg')),
    filename: '2.jpg'
])
events[3].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'lang_chu_tich.jpg')),
    filename: 'lang_chu_tich.jpg'
])
events[4].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'hoi-sach.jpg')),
    filename: 'hoi-sach.jpg'
])
events[5].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'Carnaval.jpg')),
    filename: 'Carnaval.jpg'
])
events[6].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'nha-trang.jpg')),
    filename: 'nha-trang.jpg'
])
events[7].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'nam-du-lich-bien-phu-quoc.jpg')),
    filename: 'nam-du-lich-bien-phu-quoc.jpg'
])
events[8].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'kiep-bac.jpg')),
    filename: 'kiep-bac.jpg'
])
events[9].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'hoa-da-lat.jpg')),
    filename: 'hoa-da-lat.jpg'
])
events[10].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'le-hoi-sam-son.JPG')),
    filename: 'le-hoi-sam-son.JPG'
])
events[11].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'du-xuan-dau-nam.jpg')),
    filename: 'du-xuan-dau-nam.jpg'
])
events[12].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'cam-trai-tam-dao.jpg')),
    filename: 'cam-trai-tam-dao.jpg'
])
events[13].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'trai-nghiem-lam-gom.jpg')),
    filename: 'trai-nghiem-lam-gom.jpg'
])
events[14].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'le-hoi-chua-huong.jpg')),
    filename: 'le-hoi-chua-huong.jpg'
])
events[15].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'tham-quan-du-lich.jpg')),
    filename: 'tham-quan-du-lich.jpg'
])
events[16].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'di-thuyen-tren-ho-ba-be.jpg')),
    filename: 'di-thuyen-tren-ho-ba-be.jpg'
])
events[17].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'du-lich-mien-trung.jpg')),
    filename: 'du-lich-mien-trung.jpg'
])
events[18].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'phao-hoa.jpg')),
    filename: 'phao-hoa.jpg'
])
events[19].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'cam-trai-ba-vi.jpg')),
    filename: 'cam-trai-ba-vi.jpg'
])
events[20].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'kham-pha-muong-hoa.jpg')),
    filename: 'kham-pha-muong-hoa.jpg'
])
events[21].pictures.attach([
    io: File.open(Rails.root.join('app', 'assets', 'images', 'events', 'cho-phien.jpg')),
    filename: 'cho-phien.jpg'
])

#place tu 0 den. them anh
#anh va su kien lay o iko-yo
places[0].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'Ho_7_Mau_4.jpg')),
    filename: 'Ho_7_Mau_4.jpg',
)
places[1].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'rap-xiec.jpeg')),
    filename: 'rap-xiec.jpeg',
)
places[2].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'pho-di-bo-ha-noi-.jpg')),
    filename: 'pho-di-bo-ha-noi-.jpg',
)
places[3].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'lang.jpg')),
    filename: 'lang.jpg',
)
places[4].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'hoang-thanh-thang-long.jpg')),
    filename: 'hoang-thanh-thang-long.jpg',
)
places[5].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'ha-long-bay.jpg')),
    filename: 'ha-long-bay.jpg',
)
places[6].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'Nha_Trang.jpg')),
    filename: 'Nha_Trang.jpg',
)
places[7].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'phu_quoc.jpg')),
    filename: 'phu_quoc.jpg',
)
places[8].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'KIEPBAC.jpg')),
    filename: 'KIEPBAC.jpg',
)
places[9].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'dalat.jpg')),
    filename: 'dalat.jpg',
)
places[10].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'sam-son.jpg')),
    filename: 'sam-son.jpg',
)
places[11].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'bai-dinh.jpg')),
    filename: 'bai-dinh.jpg',
)
places[12].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'tam-dao.jpg')),
    filename: 'tam-dao.jpg',
)
places[13].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'bat-trang.jpg')),
    filename: 'bat-trang.jpg',
)
places[14].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'chua-huong.jpg')),
    filename: 'chua-huong.jpg',
)
places[15].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'chua-mot-c.jpg')),
    filename: 'chua-mot-c.jpg',
)
places[16].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'ho-ba-be.jpg')),
    filename: 'ho-ba-be.jpg',
)
places[17].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'kinhthanhhue.jpg')),
    filename: 'kinhthanhhue.jpg',
)
places[18].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'da-nang.jpg')),
    filename: 'da-nang.jpg',
)
places[19].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'ba-vi.jpg')),
    filename: 'ba-vi.jpg',
)
places[20].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'muong-hoa.jpg')),
    filename: 'muong-hoa.jpg',
)
places[21].picture.attach(
    io: File.open(Rails.root.join('app', 'assets', 'images', 'places', 'sapa.jpg')),
    filename: 'sapa.jpg',
)
