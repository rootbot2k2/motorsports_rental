require "open-uri"

ApplicationRecord.transaction do
  puts "Destroying tables..."
    Favorite.destroy_all
    Review.destroy_all
    Trip.destroy_all
    Car.destroy_all
    User.destroy_all


  puts "Resetting primary keys..."
  ApplicationRecord.connection.reset_pk_sequence!('users')
  ApplicationRecord.connection.reset_pk_sequence!('cars')
  ApplicationRecord.connection.reset_pk_sequence!('trips')
  ApplicationRecord.connection.reset_pk_sequence!('reviews')
  ApplicationRecord.connection.reset_pk_sequence!('favorites')



  puts "Creating users..."
  User.create!(
    first_name: "Dominic",
    last_name: "Toretto",
    approved_to_drive: true,
    is_superhost: true,
    is_clean_certified: true,
    email: "dom@toretto.com",
    phone_number: "222-333-4444",
    password: 'password1',
    created_at: "2020-02-14T00:00:00.000Z"
  )

    User.create!(
        first_name: "John",
        last_name: "Wick",
        approved_to_drive: false,
        is_superhost: false,
        is_clean_certified: true,
        email: "john.wick@wick.com",
        phone_number: "",
        password: 'password22',
        created_at: "2022-01-01T00:00:00.000Z"
    )

    User.create!(
        password: 'password2',
        first_name: "Emma",
        last_name: "Watson",
        approved_to_drive: true,
        is_superhost: false,
        is_clean_certified: true,
        email: "emma.watson@awesome.com",
        phone_number: "222-222-2222",
        created_at: "2022-02-14T00:00:00.000Z"
    )

    User.create!(
        password: 'password6',
        first_name: "Tom",
        last_name: "Hanks",
        approved_to_drive: true,
        is_superhost: true,
        is_clean_certified: true,
        email: "tom.hanks@actors.com",
        phone_number: "666-666-6666",
        created_at: "2022-12-25T00:00:00.000Z"
    )

    User.create!(
        password: 'password3',
        first_name: "Elon",
        last_name: "Musk",
        approved_to_drive: true,
        is_superhost: true,
        is_clean_certified: false,
        email: "elon.musk@tesla.com",
        phone_number: "333-333-3333",
        created_at: "2021-11-11T00:00:00.000Z"
    )

    User.create!(
        password: 'password4',
        first_name: "Serena",
        last_name: "Williams",
        approved_to_drive: true,
        is_superhost: false,
        is_clean_certified: false,
        email: "serena.williams@tennis.com",
        phone_number: "444-444-4444",
        created_at: "2022-01-01T00:00:00.000Z"
    )

    User.create!(
        password: 'password5',
        first_name: "Harry",
        last_name: "Potter",
        approved_to_drive: false,
        is_superhost: false,
        is_clean_certified: false,
        email: "harry.potter@hogwarts.com",
        phone_number: "555-555-5555",
        created_at: "2023-03-15T00:00:00.000Z"
    )

    User.create!(
        password: 'password7',
        first_name: "Beyonce",
        last_name: "Knowles",
        approved_to_drive: true,
        is_superhost: false,
        is_clean_certified: true,
        email: "beyonce.knowles@music.com",
        phone_number: "777-777-7777",
        created_at: "2021-07-04T00:00:00.000Z"
    )

    User.create!(
        password: 'password8',
        first_name: "Leonardo",
        last_name: "DiCaprio",
        approved_to_drive: true,
        is_superhost: true,
        is_clean_certified: false,
        email: "leonardo.dicaprio@titanic.com",
        phone_number: "888-888-8888",
        created_at: "2022-06-01T00:00:00.000Z"
    )

    User.create!(
        password: 'password9',
        first_name: "Jennifer",
        last_name: "Lawrence",
        approved_to_drive: false,
        is_superhost: true,
        is_clean_certified: true,
        email: "jennifer.lawrence@hungry.com",
        phone_number: "999-999-9999",
        created_at: "2023-02-14T00:00:00.000Z"
    )

    User.create!(
        password: 'password10',
        first_name: "Michael",
        last_name: "Jordan",
        approved_to_drive: true,
        is_superhost: false,
        is_clean_certified: true,
        email: "michael.jordan@bball.com",
        phone_number: "",
        created_at: "2021-08-08T00:00:00.000Z"
    )

    User.create!(
        password: 'password11',
        first_name: "Wonder",
        last_name: "Woman",
        approved_to_drive: false,
        is_superhost: false,
        is_clean_certified: true,
        email: "wonder.woman@comics.com",
        phone_number: "111-222-3333",
        created_at: "2022-09-01T00:00:00.000Z"
    )

    User.create!(
        password: 'password12',
        first_name: "John",
        last_name: "Travolta",
        approved_to_drive: true,
        is_superhost: false,
        is_clean_certified: true,
        email: "john.travolta@actors.com",
        phone_number: "222-333-4444",
        created_at: "2021-12-31T00:00:00.000Z"
    )

    User.create!(
        password: 'password13',
        first_name: "Taylor",
        last_name: "Swift",
        approved_to_drive: true,
        is_superhost: true,
        is_clean_certified: true,
        email: "taylor.swift@music.com",
        phone_number: "333-444-5555",
        created_at: "2022-01-15T00:00:00.000Z"
    )

    User.create!(
        password: 'password14',
        first_name: "James",
        last_name: "Bond",
        approved_to_drive: true,
        is_superhost: false,
        is_clean_certified: true,
        email: "james.bond@undercover.com",
        phone_number: "",
        created_at: "2021-06-30T00:00:00.000Z"
    )

    User.create!(
        password: 'password15',
        first_name: "Katy",
        last_name: "Perry",
        approved_to_drive: false,
        is_superhost: true,
        is_clean_certified: true,
        email: "katy.perry@music.com",
        phone_number: "555-666-7777",
        created_at: "2023-03-10T00:00:00.000Z"
    )

    User.create!(
        password: 'password16',
        first_name: "Tony",
        last_name: "Stark",
        approved_to_drive: true,
        is_superhost: true,
        is_clean_certified: false,
        email: "tony.stark@stark.com",
        phone_number: "666-777-8888",
        created_at: "2021-05-15T00:00:00.000Z"
    )

    User.create!(
        password: 'password17',
        first_name: "Steve",
        last_name: "Jobs",
        approved_to_drive: true,
        is_superhost: false,
        is_clean_certified: true,
        email: "steve@apple.com",
        phone_number: "",
        created_at: "2022-11-11T00:00:00.000Z"
    )

    User.create!(
        password: 'password18',
        first_name: "Ali",
        last_name: "Wong",
        approved_to_drive: true,
        is_superhost: true,
        is_clean_certified: true,
        email: "ali@comedy.com",
        phone_number: "888-999-0000",
        created_at: "2023-01-01T00:00:00.000Z"
    )

    User.create!(
        password: 'password19',
        first_name: "Adele",
        last_name: "Adkins",
        approved_to_drive: true,
        is_superhost: false,
        is_clean_certified: true,
        email: "adele.adkins@deep.com",
        phone_number: "999-000-1111",
        created_at: "2021-09-20T00:00:00.000Z"
    )

    User.create!(
        password: 'password20',
        first_name: "Han",
        last_name: "Lue",
        approved_to_drive: true,
        is_superhost: false,
        is_clean_certified: true,
        email: "han.lue@fastandfurious.com",
        phone_number: "777-888-9999",
        created_at: "2023-04-01T00:00:00.000Z"
    )

    User.create!(
        password: 'password21',
        first_name: "Letty",
        last_name: "Ortiz",
        approved_to_drive: true,
        is_superhost: false,
        is_clean_certified: true,
        email: "letty.ortiz@fastandfurious.com",
        phone_number: "111-222-3333",
        created_at: "2022-05-05T00:00:00.000Z"
    )

    User.create!(
        password: 'password25',
        first_name: "Roman",
        last_name: "Pearce",
        approved_to_drive: true,
        is_superhost: false,
        is_clean_certified: true,
        email: "roman.pearce@fastandfurious.com",
        phone_number: "",
        created_at: "2022-06-20T00:00:00.000Z"
    )

    User.create!(
        password: 'password23',
        first_name: "Mia",
        last_name: "Toretto",
        approved_to_drive: true,
        is_superhost: false,
        is_clean_certified: true,
        email: "mia.toretto@fastandfurious.com",
        phone_number: "333-444-5555",
        created_at: "2022-09-01T00:00:00.000Z"
    )

    User.create!(
        password: 'password24',
        first_name: "Brian",
        last_name: "O'Conner",
        approved_to_drive: true,
        is_superhost: true,
        is_clean_certified: false,
        email: "brian.oconner@fastandfurious.com",
        phone_number: "",
        created_at: "2021-08-12T00:00:00.000Z"
    )

  puts "User creation done!"

  puts "Creating cars..."
  Car.create!(
    make: "Tesla",
    model: "Model S",
    year: 2020,
    mpg: 402,
    doors_count: 4,
    seats_count: 5,
    category: "Electric",
    automatic: true,
    city: "Las Vegas",
    description: "Hey there, car enthusiasts! I've got a sweet ride that's sure to turn heads and give you a smooth ride like no other. It's a Tesla Model S, and let me tell you, it's a game-changer in the world of electric cars. This sleek and stylish sedan boasts a luxurious interior with top-of-the-line technology, making it the perfect ride for those who want to travel in style and comfort.

The Tesla Model S has a range of up to 400 miles on a single charge, which means you can go from LA to Vegas and back without needing to stop and recharge. With its smooth handling and quiet ride, you'll feel like you're floating on air as you cruise down the highway.

This Model S is equipped with a panoramic sunroof that lets you take in the beautiful California sunshine, and its state-of-the-art sound system will have you jamming to your favorite tunes on the road. Plus, with its autopilot feature, you can sit back and relax as the car does most of the work for you.

Overall, the Tesla Model S is a stunning and innovative car that's sure to impress anyone who sees it. Whether you're cruising through the city or taking a long road trip, this car will provide you with an unforgettable driving experience. So what are you waiting for? Rent this beauty today and hit the road in style!",
    guidelines: "Please return the car fully charged and in the same condition as you received it. No smoking, no pets, no racing, and please be mindful of the car's range when planning your trip.",
    daily_rate: 300,
    location: [36.0771,-115.1467],
    active: true,
    host_id: 1,
    created_at: "2022-10-15T00:00:00.000Z"
  )

  Car.create!(
    make: "Mercedes-benz",
    model: "GLC-Class",
    year: 2019,
    mpg: 23,
    doors_count: 4,
    seats_count: 5,
    category: "All-Wheel Drive",
    automatic: true,
    description: "This HYBIRD fuel saving Mercedes-Benz GLC 350 E packs the goods if you want a 5-passenger midsize-luxury SUV which is perfect for short or longer trips and is luxurious yet strong and just fantastic to drive. As a HYBRID you can choose your drive be it  electric or combustion with this amazing vehicle. ",
    guidelines: "Please return the car in the same condition as you received it. No smoking, no pets, no off-roading, and please be mindful of the car's performance capabilities.",
    daily_rate: 400,
    location: [36.0819,-115.1331],
    city: "Las Vegas",
    active: true,
    host_id: 6,
    created_at: "2023-02-28T00:00:00.000Z"
  )

Car.create!(
    make: "Ferrari",
    model: "488 GTB",
    year: 2017,
    mpg: 18,
    doors_count: 2,
    seats_count: 2,
    category: "Exotic",
    automatic: false,
    description: "The Ferrari 488 GTB is a stunningly beautiful and incredibly powerful sports car with a V8 engine and a top speed of over 200 mph. This car is the perfect choice for a special occasion or a memorable road trip, with features like carbon-ceramic brakes and a luxurious leather interior.",
    guidelines: "Please return the car in the same condition as you received it. No smoking, no pets, and please be mindful of the car's performance capabilities. A security deposit may be required.",
    daily_rate: 2500,
    location: [36.1498,-115.145],
    city: "Las Vegas",
    active: true,
    host_id: 13,
    created_at: "2022-07-10T00:00:00.000Z"
)

Car.create!(
    make: "Subaru",
    model: "Outback",
    year: 2019,
    mpg: 28,
    doors_count: 4,
    seats_count: 5,
    category: "All-Wheel Drive",
    automatic: true,
    description: "This Subaru Outback is the perfect vehicle for any adventure you have planned. With all-wheel drive, it can handle any terrain you throw at it, whether it's snow, mud, or rocky terrain. The car is equipped with a backup camera, Bluetooth connectivity, and a roof rack for any outdoor gear you may have. It's also great on gas, so you can save money on your trip. Whether you're planning a camping trip, a ski trip, or a road trip, this Subaru Outback is the perfect vehicle for you.",
    guidelines: "Please keep the car clean and return it with a full tank of gas. No smoking, no pets, no off-roading on extreme terrain. Please follow all traffic laws and drive safely.",
    daily_rate: 80,
    location: [36.1115,-115.2096],
    city: "Las Vegas",
    active: true,
    host_id: 10,
    created_at: "2021-08-03T00:00:00.000Z"
)

Car.create!(
    make: "Tesla",
    model: "Model X",
    year: 2021,
    mpg: 305,
    doors_count: 4,
    seats_count: 5,
    category: "Electric",
    automatic: true,
    description: "Experience the future of driving with the Tesla Model X. With its cutting-edge technology and sleek design, this electric car is a true marvel of engineering. It features a range of over 400 miles on a single charge, which means you can drive all day without worrying about running out of juice. The Model X also has a spacious interior with plenty of legroom and headroom, making it comfortable for long trips. And with its quick acceleration and responsive handling, you'll feel like you're driving a sports car. Whether you're commuting to work or taking a road trip, the Tesla Model X is the perfect car for the job.",
    guidelines: "Please charge the car before returning it. No smoking, no pets, no racing, and no off-roading. Please treat the car with care and respect.",
    daily_rate: 350,
    location: [36.1617,-115.1241],
    city: "Las Vegas",
    active: true,
    host_id: 7,
    created_at: "2022-02-14T00:00:00.000Z"
)

Car.create!(
    make: "Ford",
    model: "Mustang",
    year: 2019,
    mpg: 21,
    doors_count: 2,
    seats_count: 4,
    category: "Muscle",
    automatic: true,
    description: "The Ford Mustang is an American classic that combines style and performance. This particular model is the GT Premium Fastback, which boasts a 5.0L V8 engine that delivers 460 horsepower and 420 lb-ft of torque. It also has a smooth-shifting 10-speed automatic transmission and a sport-tuned suspension that provides excellent handling. With its bold styling, powerful engine, and modern technology, this Mustang is sure to turn heads wherever you go.",
    guidelines: "Please return the car in the same condition as you received it. No smoking, no pets, no off-roading, and no racing. Please drive safely and responsibly.",
    daily_rate: 250,
    location: [37.780977, -122.463370],
    city: "San Francisco",
    active: true,
    host_id: 1,
    created_at: "2021-09-21T00:00:00.000Z"
)

Car.create!(
    make: "Ferrari",
    model: "488 Spider",
    year: 2019,
    mpg: 18,
    doors_count: 2,
    seats_count: 2,
    category: "Exotic",
    automatic: true,
    description: "Get ready to turn heads with the Ferrari 488 Spider. This exotic sports car is designed for performance and style, with a sleek, aerodynamic body and a powerful engine that can reach speeds of up to 200 mph. The retractable hardtop roof allows you to enjoy the thrill of open-air driving, while the luxurious interior offers all the comfort and amenities you need for a truly unforgettable experience. Whether you're taking a leisurely cruise or pushing the limits on the track, the Ferrari 488 Spider is the ultimate driving machine.",
    guidelines: "Please treat the car with care and respect. No racing, no smoking, and no pets allowed. Must return the car with a full tank of premium gasoline.",
    daily_rate: 2000,
    location: [37.802311, -122.411427],
    city: "San Francisco",
    active: true,
    host_id: 14,
    created_at: "2022-03-20T00:00:00.000Z"
)

Car.create!(
    make: "Tesla",
    model: "Model Y",
    year: 2022,
    mpg: 220,
    doors_count: 4,
    seats_count: 5,
    category: "Electric",
    automatic: true,
    description: "Experience the future of driving with the Tesla Model Y. This fully electric luxury car offers unmatched performance and efficiency, with a range of up to 200 miles on a single charge and acceleration that can rival many sports cars. The spacious and stylish interior is packed with features like a panoramic sunroof, premium sound system, and advanced autopilot technology. Whether you're commuting to work or embarking on a road trip, the Tesla Model Y is the perfect choice for drivers who value sustainability and innovation.",
    guidelines: "Please return the car with at least 50% battery charge. No smoking or pets allowed. Must follow all traffic laws and use autopilot responsibly.",
    daily_rate: 500,
    location: [37.786939, -122.459978],
    city: "San Francisco",
    active: true,
    host_id: 3,
    created_at: "2022-04-15T00:00:00.000Z"
)

Car.create!(
    make: "Porsche",
    model: "911 Carrera",
    year: 1985,
    mpg: 22,
    doors_count: 2,
    seats_count: 4,
    category: "Exotic",
    automatic: true,
    description: "Experience the ultimate driving machine with the Porsche 911 Carrera 4S. This high-performance sports car combines precision engineering, cutting-edge technology, and luxurious comfort to create an unparalleled driving experience. The all-wheel drive system and aerodynamic design allow for maximum control and agility, while the advanced infotainment system and premium audio ensure that you'll enjoy every moment on the road. Whether you're cruising down the highway or tackling a winding mountain pass, the Porsche 911 Carrera 4S is the perfect car for drivers who demand nothing but the best.",
    guidelines: "Please treat the car with care and respect. No smoking, no pets, and no racing allowed. Must return the car with a full tank of premium gasoline.",
    daily_rate: 1500,
    location: [37.773390, -122.421444],
    city: "San Francisco",
    active: true,
    host_id: 1,
    created_at: "2021-08-20T00:00:00.000Z"
)

Car.create!(
    make: "Jeep",
    model: "Wrangler",
    year: 2015,
    mpg: 20,
    doors_count: 4,
    seats_count: 5,
    category: "All-Wheel Drive",
    automatic: true,
    description: "Get ready for adventure with the Jeep Wrangler. This iconic off-road SUV is built to handle anything the great outdoors can throw at it, with rugged features like all-terrain tires, skid plates, and a high-strength steel frame. The spacious interior offers plenty of room for passengers and cargo, while the advanced 4x4 system and powerful engine ensure that you can tackle even the toughest terrain with ease. Whether you're heading out on a camping trip or exploring a new trail, the Jeep Wrangler is the perfect vehicle for those who love to live life off the beaten path.",
    guidelines: "The renter is responsible for ensuring that the car is locked and secure when not in use. Any theft or vandalism will be the responsibility of the renter.",
    daily_rate: 300,
    location: [37.760649, -122.434264],
    city: "San Francisco",
    active: true,
    host_id: 10,
    created_at: "2021-08-20T00:00:00.000Z"
)

Car.create!(
    make: "Lamborghini",
    model: "Aventador",
    year: 2019,
    mpg: 11,
    doors_count: 2,
    seats_count: 2,
    category: "Exotic",
    automatic: false,
    description: "This stunning 2022 Lamborghini Aventador is a showstopper. With its sleek, aerodynamic design and powerful V12 engine, you'll turn heads everywhere you go. The car comes fully loaded with all the latest tech and features, including a premium sound system, touchscreen display, and Bluetooth connectivity. It's the perfect car for a special occasion or a luxurious weekend getaway.",
    guidelines: "Please return the car in the same condition as you received it. No smoking, no pets, no racing, no off-roading, no food or drink in the car. Premium gasoline only.",
    daily_rate: 3500,
    location: [37.792222, -122.405003],
    city: "San Francisco",
    active: true,
    host_id: 14,
    created_at: "2021-07-12T00:00:00.000Z"
)

Car.create!(
    make: "Tesla",
    model: "Model S",
    year: 2021,
    mpg: 302,
    doors_count: 4,
    seats_count: 5,
    category: "Electric",
    automatic: true,
    description: "This 2021 Tesla Model S is the ultimate electric car. With its sleek, modern design and cutting-edge technology, you'll enjoy a smooth, quiet ride every time. The car comes equipped with autopilot, a panoramic sunroof, and a state-of-the-art sound system. It's perfect for eco-conscious drivers who want to travel in style.",
    guidelines: "Please return the car in the same condition as you received it. No smoking, no pets, no off-roading, no racing. Must be charged before returning.",
    daily_rate: 300,
    location:  [37.748279, -122.487738],
    city: "San Francisco",
    active: true,
    host_id: 7,
    created_at: "2022-01-18T00:00:00.000Z"
)

Car.create!(
    make: "Subaru",
    model: "Impreza",
    year: 2019,
    mpg: 30,
    doors_count: 4,
    seats_count: 5,
    category: "All-Wheel Drive",
    automatic: true,
    description: "This 2019 Subaru Impreza is the perfect car for drivers who want to take on any weather conditions. With its reliable all-wheel drive system and fuel-efficient engine, you'll feel confident and comfortable on the road. The car comes equipped with all the latest safety features, including blind spot detection and lane departure warning. It's a great choice for families or anyone who wants a reliable, practical car.",
    guidelines: "The car is not allowed to be used for commercial purposes, such as ride-sharing or delivery services, without prior permission from the owner.",
    daily_rate: 100,
    location: [37.808205, -122.415480],
    city: "San Francisco",
    active: true,
    host_id: 9,
    created_at: "2021-12-01T00:00:00.000Z"
)

Car.create!(
    make: "Subaru",
    model: "Impreza WRX STI",
    year: 2013,
    mpg: 19,
    doors_count: 4,
    seats_count: 5,
    category: "All-Wheel Drive",
    automatic: false,
    description: "This is a brand new 2022 Subaru Impreza WRX STI with the latest and greatest in all-wheel drive technology. It's the perfect car for a weekend getaway to the mountains or a thrilling drive on the racetrack. With its powerful engine and precise handling, you'll be able to take on any road with confidence.",
    guidelines: "Please drive responsibly and do not take the car off-road. No smoking, pets, or racing allowed. Must return the car in the same condition as when you received it.",
    daily_rate: 200,
    location: [37.758856, -122.397758],
    city: "San Francisco",
    active: true,
    host_id: 14,
    created_at: "2022-02-01T00:00:00.000Z"
)

Car.create!(
    make: "Audi",
    model: "RS 7 Sportback",
    year: 2016,
    mpg: 22,
    doors_count: 4,
    seats_count: 5,
    category: "Sport",
    automatic: true,
    description: "This Audi RS 7 Sportback is the perfect car for those who demand the best in both style and performance. With its all-wheel drive system and powerful engine, it's a dream to drive on any road. The interior is outfitted with all the latest technology and luxury features, including heated seats, a panoramic sunroof, and a premium sound system.",
    guidelines: "Please keep the car in good condition and treat it with respect. No smoking, pets, or racing allowed. Must return the car in the same condition as when you received it.",
    daily_rate: 300,
    location: [37.802576, -122.408343],
    city: "San Francisco",
    active: true,
    host_id: 8,
    created_at: "2022-01-01T00:00:00.000Z"
)

Car.create!(
    make: "Porsche",
    model: "911 Turbo S",
    year: 2017,
    mpg: 20,
    doors_count: 2,
    seats_count: 4,
    category: "Exotic",
    automatic: true,
    description: "This 2020 Porsche 911 Turbo S is the ultimate driving machine. With its all-wheel drive system and lightning-fast acceleration, it's a thrill to drive on any road. The sleek design and luxurious interior make it a showstopper wherever you go. If you're looking for a car that combines speed, style, and sophistication, look no further than this Porsche 911 Turbo S.",
    guidelines: "Please treat the car with respect and return it in the same condition as when you received it. No smoking, pets, or racing allowed. Must be kept in a secure location overnight.",
    daily_rate: 500,
    location: [47.5232,-122.2613],
    city: "Seattle",
    active: true,
    host_id: 3,
    created_at: "2021-10-01T00:00:00.000Z"
)

Car.create!(
    make: "Toyota",
    model: "Camry",
    year: 2021,
    mpg: 28,
    doors_count: 4,
    seats_count: 5,
    category: "Economy",
    automatic: true,
    description: "The Toyota Camry is a reliable and spacious sedan that's perfect for road trips and everyday driving. With its comfortable interior and fuel efficiency, it's a great car for families and individuals alike.",
    guidelines: "Any damage to the interior or exterior of the car must be reported to the owner immediately. Failure to do so may result in additional charges.",
    daily_rate: 70,
    location: [47.6010,-122.3302],
    city: "Seattle",
    active: true,
    host_id: 18,
    created_at: "2022-03-15T00:00:00.000Z"
)

Car.create!(
    make: "Honda",
    model: "Accord",
    year: 2018,
    mpg: 30,
    doors_count: 4,
    seats_count: 5,
    category: "Economy",
    automatic: true,
    description: "The Honda Accord is a sleek and stylish sedan that offers a smooth ride and excellent fuel economy. With its comfortable and spacious interior, it's the perfect car for both long trips and short commutes.",
    guidelines: "Please return the car in the same condition as you received it. No smoking, no pets, no off-roading, no racing.",
    daily_rate: 80,
    location: [47.6183,-122.3444],
    city: "Seattle",
    active: true,
    host_id: 5,
    created_at: "2022-04-05T00:00:00.000Z"
)

Car.create!(
    make: "Ford",
    model: "Fusion",
    year: 2020,
    mpg: 25,
    doors_count: 4,
    seats_count: 5,
    category: "Economy",
    automatic: true,
    description: "The Ford Fusion is a reliable and comfortable sedan that offers a smooth ride and spacious interior. With its modern features and stylish design, it's a great car for both personal and business use.",
    guidelines: "Please return the car in the same condition as you received it. No smoking, no pets, no off-roading, no racing.",
    daily_rate: 75,
    location: [47.6804,-122.3174],
    city: "Seattle",
    active: true,
    host_id: 12,
    created_at: "2022-02-20T00:00:00.000Z"
)

Car.create!(
    make: "Chevrolet",
    model: "Malibu",
    year: 2018,
    mpg: 29,
    doors_count: 4,
    seats_count: 5,
    category: "Economy",
    automatic: true,
    description: "The Chevrolet Malibu is a reliable and comfortable sedan that offers a smooth ride and spacious interior. With its modern features and stylish design, it's a great car for both personal and business use.",
    guidelines: "The car is to be used only for normal and safe use, with no racing, stunts, or reckless driving allowed. Any damage or excessive wear and tear will be charged to the renter.",
    daily_rate: 70,
    location: [47.5848,-122.3014],
    city: "Seattle",
    active: true,
    host_id: 8,
    created_at: "2022-01-15T00:00:00.000Z"
)

Car.create!(
    make: "Jeep",
    model: "Wrangler Unlimited",
    year: 2023,
    mpg: 20,
    doors_count: 4,
    seats_count: 5,
    category: "All-Wheel Drive",
    automatic: true,
    description: "This is a brand new Jeep Wrangler Unlimited. It has all the latest features and is perfect for off-roading or cruising around town. The vehicle is well-maintained and cleaned regularly. It has been treated with care, and I expect renters to do the same.",
    guidelines: "The car is not allowed to be driven outside of the state without prior permission from the owner. Any violation will result in a penalty fee.",
    daily_rate: 150,
    location: [47.7074,-122.3104],
    city: "Seattle",
    active: true,
    host_id: 18,
    created_at: "2023-02-10T00:00:00.000Z"
)

Car.create!(
    make: "Honda",
    model: "Civic",
    year: 2018,
    mpg: 36,
    doors_count: 4,
    seats_count: 5,
    category: "Economy",
    automatic: true,
    description: "This is a reliable and efficient Honda Civic. It's great for city driving and long road trips alike. The car has been well-maintained and is in great condition. I'm excited to share it with renters who will treat it with care.",
    guidelines: "Any traffic violations or parking tickets incurred during the rental period are the responsibility of the renter and must be paid promptly.",
    daily_rate: 80,
    location: [47.5467,-122.3218],
    city: "Seattle",
    active: true,
    host_id: 9,
    created_at: "2021-08-22T00:00:00.000Z"
)

Car.create!(
    make: "Toyota",
    model: "FJ Cruiser",
    year: 2007,
    mpg: 19,
    doors_count: 4,
    seats_count: 5,
    category: "All-Wheel Drive",
    automatic: true,
    description: "This is a sleek and stylish Cruiser. You'll look cooler than in a Jeep.",
    guidelines: "Please treat this vehicle with care and return it in the same condition as you received it. No smoking is allowed in the vehicle.",
    daily_rate: 90,
    location: [47.6679,-122.2840],
    city: "Seattle",
    active: true,
    host_id: 4,
    created_at: "2021-11-18T00:00:00.000Z"
)

Car.create!(
    make: "Rivian",
    model: "R1T",
    year: 2022,
    mpg: 141,
    doors_count: 4,
    seats_count: 5,
    category: "Electric",
    automatic: true,
    description: "Experience the future of driving. This pickup will turn heads as you silently zoom by on electric power.",
    guidelines: "Please charge the car before returning it. No smoking or pets in the car, please. The car is NOT equipped with autopilot.",
    daily_rate: 150,
    location: [47.5615,-122.2891],
    city: "Seattle",
    active: true,
    host_id: 1,
    created_at: "2022-01-15T00:00:00.000Z"
)

Car.create!(
    make: "Chevrolet",
    model: "Bolt",
    year: 2021,
    mpg: 118,
    doors_count: 4,
    seats_count: 5,
    category: "Electric",
    automatic: true,
    description: "Get ready to save money and the planet with the Chevrolet Bolt electric car. With up to 259 miles of range on a single charge, you can go anywhere you want to go without worrying about running out of power. The Bolt is zippy, responsive, and fun to drive, and it comes loaded with features like Apple CarPlay, Android Auto, and a rearview camera.",
    guidelines: "Please return the car with at least 50% charge. No smoking or pets in the car, please. You may charge the car at any EV charging station. If you need recommendations for charging locations, just ask!",
    daily_rate: 90,
    location: [47.6293,-122.3613],
    city: "Seattle",
    active: true,
    host_id: 25,
    created_at: "2021-08-23T00:00:00.000Z"
)

    puts "Car creation done!"

    puts "Creating trips and reviews"

Trip.create!(
  start_date: "2022-03-12T00:00:00.000Z",
  end_date: "2022-03-17T00:00:00.000Z",
  protection_plan: "Standard",
  driver_id: 2,
  car_id: 1
)

Review.create!(
  cleanliness_rating: 4,
  maintenance_rating: 5,
  communication_rating: 3,
  convenience_rating: 4,
  accuracy_rating: 5,
  comment: "The electric car was amazing and ran so smoothly. It was easy to charge and had plenty of space for luggage. The pickup and dropoff were a bit confusing, but overall a great experience.",
  driver_id: 2,
  car_id: 1,
  created_at: "2022-03-19T00:00:00.000Z",
  updated_at: "2022-03-19T00:00:00.000Z"
)

Trip.create!(
  start_date: "2022-04-10T00:00:00.000Z",
  end_date: "2022-04-14T00:00:00.000Z",
  protection_plan: "Premier",
  driver_id: 5,
  car_id: 1
)

Trip.create!(
  start_date: "2023-04-23T00:00:00.000Z",
  end_date: "2023-04-24T00:00:00.000Z",
  protection_plan: "Standard",
  driver_id: 1,
  car_id: 15
)

Review.create!(
  cleanliness_rating: 5,
  maintenance_rating: 5,
  communication_rating: 5,
  convenience_rating: 4,
  accuracy_rating: 5,
  comment: "I loved driving this electric car! It was so quiet and efficient. The pickup and dropoff were easy and the owner was very friendly and accommodating. Would definitely rent this car again.",
  driver_id: 5,
  car_id: 1,
  created_at: "2022-04-16T00:00:00.000Z",
  updated_at: "2022-04-16T00:00:00.000Z"
)

Trip.create!(
  start_date: "2022-05-02T00:00:00.000Z",
  end_date: "2022-05-06T00:00:00.000Z",
  protection_plan: "Minimum",
  driver_id: 6,
  car_id: 1
)

Review.create!(
  cleanliness_rating: 3,
  maintenance_rating: 4,
  communication_rating: 2,
  convenience_rating: 3,
  accuracy_rating: 4,
  comment: "The electric car was a great ride, but it could have been cleaner. There were some crumbs on the seats and the interior had a weird smell. Pickup and dropoff were straightforward.",
  driver_id: 6,
  car_id: 1,
  created_at: "2022-05-08T00:00:00.000Z",
  updated_at: "2022-05-08T00:00:00.000Z"
)

Trip.create!(
  start_date: "2022-06-20T00:00:00.000Z",
  end_date: "2022-06-25T00:00:00.000Z",
  protection_plan: "Standard",
  driver_id: 9,
  car_id: 1
)

Trip.create!(
start_date: "2023-04-25T00:00:00.000Z",
end_date: "2023-04-26T00:00:00.000Z",
protection_plan: "Standard",
driver_id: 9,
car_id: 1
)

Review.create!(
cleanliness_rating: 5,
maintenance_rating: 4,
communication_rating: 5,
convenience_rating: 4,
accuracy_rating: 5,
comment: "The car was in excellent condition, and the host was very responsive and easy to communicate with.",
driver_id: 9,
car_id: 1,
created_at: "2023-04-28T00:00:00.000Z",
updated_at: "2023-04-28T00:00:00.000Z"
)

Trip.create!(
start_date: "2023-04-15T00:00:00.000Z",
end_date: "2023-04-17T00:00:00.000Z",
protection_plan: "Premier",
driver_id: 7,
car_id: 1
)

Review.create!(
cleanliness_rating: 5,
maintenance_rating: 5,
communication_rating: 5,
convenience_rating: 5,
accuracy_rating: 5,
comment: "This was an amazing car rental experience. The car was pristine and drove like a dream. The host was very friendly and accommodating, and the pickup and dropoff process was seamless.",
driver_id: 7,
car_id: 1,
created_at: "2023-04-19T00:00:00.000Z",
updated_at: "2023-04-19T00:00:00.000Z"
)

Trip.create!(
start_date: "2023-04-22T00:00:00.000Z",
end_date: "2023-04-23T00:00:00.000Z",
protection_plan: "Minimum",
driver_id: 11,
car_id: 1
)

Review.create!(
cleanliness_rating: 4,
maintenance_rating: 4,
communication_rating: 3,
convenience_rating: 4,
accuracy_rating: 4,
comment: "The car was nice and clean, but there were some minor issues with the brakes. Overall, it was a decent rental experience.",
driver_id: 11,
car_id: 1,
created_at: "2023-04-25T00:00:00.000Z",
updated_at: "2023-04-25T00:00:00.000Z"
)

Trip.create!(
start_date: "2022-03-15T00:00:00.000Z",
end_date: "2022-03-18T00:00:00.000Z",
protection_plan: "Premier",
driver_id: 5,
car_id: 2
)

Review.create!(
cleanliness_rating: 5,
maintenance_rating: 4,
communication_rating: 3,
convenience_rating: 5,
accuracy_rating: 4,
comment: "This SUV was perfect for our family road trip. It handled well on the highway and had plenty of space for all of our luggage.",
driver_id: 5,
car_id: 2,
created_at: "2022-03-20T00:00:00.000Z",
updated_at: "2022-03-20T00:00:00.000Z"
)

Trip.create!(
start_date: "2022-04-05T00:00:00.000Z",
end_date: "2022-04-10T00:00:00.000Z",
protection_plan: "Standard",
driver_id: 8,
car_id: 2
)

Review.create!(
cleanliness_rating: 4,
maintenance_rating: 5,
communication_rating: 5,
convenience_rating: 5,
accuracy_rating: 4,
comment: "I rented this SUV for a weekend trip to the mountains and it was amazing. The car handled the winding roads perfectly and had all the features I needed for a comfortable trip.",
driver_id: 8,
car_id: 2,
created_at: "2022-04-12T00:00:00.000Z",
updated_at: "2022-04-12T00:00:00.000Z"
)

Trip.create!(
start_date: "2022-05-15T00:00:00.000Z",
end_date: "2022-05-22T00:00:00.000Z",
protection_plan: "Minimum",
driver_id: 3,
car_id: 2
)

Review.create!(
cleanliness_rating: 3,
maintenance_rating: 4,
communication_rating: 4,
convenience_rating: 5,
accuracy_rating: 3,
comment: "The SUV was nice and clean, but it felt a little outdated. It got me to my destination safely, but I wouldn't rent it again.",
driver_id: 3,
car_id: 2,
created_at: "2022-05-25T00:00:00.000Z",
updated_at: "2022-05-25T00:00:00.000Z"
)

Trip.create!(
start_date: "2022-06-10T00:00:00.000Z",
end_date: "2022-06-15T00:00:00.000Z",
protection_plan: "None",
driver_id: 10,
car_id: 2
)

Review.create!(
cleanliness_rating: 2,
maintenance_rating: 3,
communication_rating: 1,
convenience_rating: 2,
accuracy_rating: 1,
comment: "I had a terrible experience renting this SUV. The owner was unresponsive and unhelpful, and the car was not in great condition. I will not be renting from this owner again.",
driver_id: 10,
car_id: 2,
created_at: "2022-06-17T00:00",
updated_at: "2022-06-17T00:00"
)

Trip.create!(
  start_date: "2022-11-05T00:00:00.000Z",
  end_date: "2022-11-08T00:00:00.000Z",
  protection_plan: "Premier",
  driver_id: 10,
  car_id: 3
)

Review.create!(
  cleanliness_rating: 4,
  maintenance_rating: 5,
  communication_rating: 3,
  convenience_rating: 5,
  accuracy_rating: 4,
  comment: "Great car, loved driving it! It was SO RED. And loud! And low, I thought I could dodge under a semi truck. I did get a lot of compliments on the car.",
  driver_id: 10,
  car_id: 3,
  created_at: "2022-11-12T00:00:00.000Z",
  updated_at: "2022-11-12T00:00:00.000Z"
)

Trip.create!(
  start_date: "2022-12-20T00:00:00.000Z",
  end_date: "2022-12-25T00:00:00.000Z",
  protection_plan: "Minimum",
  driver_id: 1,
  car_id: 3
)

Review.create!(
  cleanliness_rating: 3,
  maintenance_rating: 4,
  communication_rating: 4,
  convenience_rating: 3,
  accuracy_rating: 2,
  comment: "The car was not very clean, and it had some issues with the brakes. Was not a great pick for my high-speed chase.",
  driver_id: 1,
  car_id: 3,
  created_at: "2022-12-28T00:00:00.000Z",
  updated_at: "2022-12-28T00:00:00.000Z"
)

Trip.create!(
start_date: "2022-09-01T00:00:00.000Z",
end_date: "2022-09-05T00:00:00.000Z",
protection_plan: "Premier",
driver_id: 5,
car_id: 4
)

Review.create!(
cleanliness_rating: 5,
maintenance_rating: 5,
communication_rating: 5,
convenience_rating: 5,
accuracy_rating: 5,
comment: "This offroad car is amazing, it handled everything I threw at it with ease. Would definitely recommend for any offroading enthusiasts!",
driver_id: 5,
car_id: 4,
created_at: "2022-09-07T00:00:00.000Z",
updated_at: "2022-09-07T00:00:00.000Z"
)

Trip.create!(
start_date: "2022-11-01T00:00:00.000Z",
end_date: "2022-11-05T00:00:00.000Z",
protection_plan: "Minimum",
driver_id: 7,
car_id: 4
)

Review.create!(
cleanliness_rating: 4,
maintenance_rating: 4,
communication_rating: 4,
convenience_rating: 4,
accuracy_rating: 5,
comment: "Great offroad vehicle, perfect for exploring the mountains! Only downside was that it was a bit dirty when I picked it up, but overall it was a great experience.",
driver_id: 7,
car_id: 4,
created_at: "2022-11-07T00:00:00.000Z",
updated_at: "2022-11-07T00:00:00.000Z"
)

Trip.create!(
start_date: "2023-02-01T00:00:00.000Z",
end_date: "2023-02-05T00:00:00.000Z",
protection_plan: "Standard",
driver_id: 9,
car_id: 4
)

Review.create!(
cleanliness_rating: 5,
maintenance_rating: 4,
communication_rating: 5,
convenience_rating: 4,
accuracy_rating: 5,
comment: "The car was in great condition and the ride was really smooth, but I had a bit of trouble with the pickup process. It took me longer than expected to get the keys, but overall it was a great experience!",
driver_id: 9,
car_id: 4,
created_at: "2023-02-07T00:00:00.000Z",
updated_at: "2023-02-07T00:00:00.000Z"
)

Trip.create!(
start_date: "2023-04-01T00:00:00.000Z",
end_date: "2023-04-05T00:00:00.000Z",
protection_plan: "Minimum",
driver_id: 12,
car_id: 4
)

Trip.create!(
  start_date: "2023-04-25T00:00:00.000Z",
  end_date: "2023-04-27T00:00:00.000Z",
  protection_plan: "Standard",
  driver_id: 9,
  car_id: 5
)

Review.create!(
  cleanliness_rating: 4,
  maintenance_rating: 5,
  communication_rating: 3,
  convenience_rating: 4,
  accuracy_rating: 5,
  comment: "The electric car was really smooth and easy to drive. It was clean and well-maintained. However, communication with the owner could have been better.",
  driver_id: 9,
  car_id: 5,
  created_at: "2023-04-28T00:00:00.000Z",
  updated_at: "2023-04-28T00:00:00.000Z"
)

Trip.create!(
  start_date: "2022-11-05T00:00:00.000Z",
  end_date: "2022-11-07T00:00:00.000Z",
  protection_plan: "Premier",
  driver_id: 5,
  car_id: 6
)

Review.create!(
  cleanliness_rating: 4,
  maintenance_rating: 5,
  communication_rating: 4,
  convenience_rating: 5,
  accuracy_rating: 4,
  comment: "This car was perfect for our trip. It had plenty of space for all our luggage and was comfortable to drive. The pick-up and drop-off process was smooth and easy.",
  driver_id: 5,
  car_id: 6,
  created_at: "2022-11-08T00:00:00.000Z",
  updated_at: "2022-11-08T00:00:00.000Z"
)

Trip.create!(
  start_date: "2023-02-02T00:00:00.000Z",
  end_date: "2023-02-05T00:00:00.000Z",
  protection_plan: "Standard",
  driver_id: 11,
  car_id: 6
)

Review.create!(
  cleanliness_rating: 3,
  maintenance_rating: 4,
  communication_rating: 3,
  convenience_rating: 4,
  accuracy_rating: 3,
  comment: "The car was good overall, but there were some minor issues that made the trip less enjoyable. The windshield wipers didn't work well in the rain, and the brakes were a bit squeaky. However, the car was spacious and comfortable, and we had no issues with the pick-up or drop-off.",
  driver_id: 11,
  car_id: 6,
  created_at: "2023-02-06T00:00:00.000Z",
  updated_at: "2023-02-06T00:00:00.000Z"
)

Trip.create!(
  start_date: "2023-04-10T00:00:00.000Z",
  end_date: "2023-04-12T00:00:00.000Z",
  protection_plan: "Premier",
  driver_id: 12,
  car_id: 7
)

Review.create!(
  cleanliness_rating: 4,
  maintenance_rating: 5,
  communication_rating: 5,
  convenience_rating: 4,
  accuracy_rating: 4,
  comment: "This car was a joy to drive, and it handled well on the highway. The pickup and acceleration were impressive, and the car was very clean and well-maintained.",
  driver_id: 12,
  car_id: 7,
  created_at: "2023-04-14T00:00:00.000Z",
  updated_at: "2023-04-14T00:00:00.000Z"
)

Trip.create!(
  start_date: "2023-04-20T00:00:00.000Z",
  end_date: "2023-04-22T00:00:00.000Z",
  protection_plan: "Standard",
  driver_id: 18,
  car_id: 7
)

Review.create!(
  cleanliness_rating: 3,
  maintenance_rating: 4,
  communication_rating: 3,
  convenience_rating: 5,
  accuracy_rating: 4,
  comment: "The car was nice enough, but it wasn't particularly comfortable for a long trip. The air conditioning worked well, but the seats weren't very supportive, and there was some road noise. Overall, though, it got us where we needed to go.",
  driver_id: 18,
  car_id: 7,
  created_at: "2023-04-24T00:00:00.000Z",
  updated_at: "2023-04-24T00:00:00.000Z"
)

Trip.create!(
  start_date: "2023-02-15T00:00:00.000Z",
  end_date: "2023-02-20T00:00:00.000Z",
  protection_plan: "Premier",
  driver_id: 1,
  car_id: 8
)

Review.create!(
  cleanliness_rating: 4,
  maintenance_rating: 5,
  communication_rating: 4,
  convenience_rating: 5,
  accuracy_rating: 4,
  comment: "I loved this car! It was perfect for my trip and everything was so convenient. The owner was also very communicative and made everything smooth. Perfect car for the family.",
  driver_id: 1,
  car_id: 8,
  created_at: "2023-02-22T00:00:00.000Z",
  updated_at: "2023-02-22T00:00:00.000Z"
)

Trip.create!(
  start_date: "2023-03-01T00:00:00.000Z",
  end_date: "2023-03-05T00:00:00.000Z",
  protection_plan: "Standard",
  driver_id: 2,
  car_id: 8
)

Review.create!(
  cleanliness_rating: 5,
  maintenance_rating: 4,
  communication_rating: 4,
  convenience_rating: 4,
  accuracy_rating: 5,
  comment: "This car was in great condition and drove smoothly. Everything was convenient and easy. The owner was also very responsive and helpful.",
  driver_id: 2,
  car_id: 8,
  created_at: "2023-03-07T00:00:00.000Z",
  updated_at: "2023-03-07T00:00:00.000Z"
)

Trip.create!(
  start_date: "2023-04-01T00:00:00.000Z",
  end_date: "2023-04-05T00:00:00.000Z",
  protection_plan: "Minimum",
  driver_id: 4,
  car_id: 8
)

Review.create!(
  cleanliness_rating: 5,
  maintenance_rating: 3,
  communication_rating: 3,
  convenience_rating: 4,
  accuracy_rating: 4,
  comment: "The car was pretty basic but it did the job. It was clean and easy to drive. The owner was responsive enough but not overly helpful.",
  driver_id: 4,
  car_id: 8,
  created_at: "2023-04-07T00:00:00.000Z",
  updated_at: "2023-04-07T00:00:00.000Z"
)

Trip.create!(
  start_date: "2023-04-01T00:00:00.000Z",
  end_date: "2023-04-03T00:00:00.000Z",
  protection_plan: "Standard",
  driver_id: 2,
  car_id: 9
)

Trip.create!(
  start_date: "2023-04-10T00:00:00.000Z",
  end_date: "2023-04-12T00:00:00.000Z",
  protection_plan: "Minimum",
  driver_id: 25,
  car_id: 9
)

Trip.create!(
  start_date: "2023-04-15T00:00:00.000Z",
  end_date: "2023-04-18T00:00:00.000Z",
  protection_plan: "Premier",
  driver_id: 3,
  car_id: 9
)

Trip.create!(
  start_date: "2023-04-22T00:00:00.000Z",
  end_date: "2023-04-24T00:00:00.000Z",
  protection_plan: "None",
  driver_id: 2,
  car_id: 9
)

Review.create!(
  cleanliness_rating: 5,
  maintenance_rating: 4,
  communication_rating: 5,
  convenience_rating: 5,
  accuracy_rating: 5,
  comment: "CLASSIC, such a joy to drive. Wish I owned this car!",
  driver_id: 25,
  car_id: 9,
  created_at: "2023-04-14T00:00:00.000Z",
  updated_at: "2023-04-17T00:00:00.000Z"
)

Review.create!(
  cleanliness_rating: 5,
  maintenance_rating: 5,
  communication_rating: 5,
  convenience_rating: 5,
  accuracy_rating: 5,
  comment: "This was an amazing car rental experience! The car was spotless, the owner was friendly and communicative, and everything went smoothly.",
  driver_id: 3,
  car_id: 9,
  created_at: "2023-04-20T00:00:00.000Z",
  updated_at: "2023-04-23T00:00:00.000Z"
)

Review.create!(
  cleanliness_rating: 2,
  maintenance_rating: 3,
  communication_rating: 1,
  convenience_rating: 2,
  accuracy_rating: 2,
  comment: "The car was dirty and had some mechanical issues. The owner was hard to reach and unhelpful.",
  driver_id: 2,
  car_id: 9,
  created_at: "2023-04-26T00:00:00.000Z",
    updated_at: "2023-04-26T00:00:00.000Z")

Trip.create!(
  start_date: "2023-04-01T00:00:00.000Z",
  end_date: "2023-04-03T00:00:00.000Z",
  protection_plan: "Standard",
  driver_id: 7,
  car_id: 10
)

Review.create!(
  cleanliness_rating: 4,
  maintenance_rating: 5,
  communication_rating: 3,
  convenience_rating: 4,
  accuracy_rating: 5,
  comment: "The car was in great condition and very clean. It was easy to communicate with the owner and the pickup and dropoff were convenient. I highly recommend this car!",
  driver_id: 7,
  car_id: 10,
  created_at: "2023-04-05T00:00:00.000Z",
  updated_at: "2023-04-05T00:00:00.000Z"
)

Trip.create!(
  start_date: "2023-04-20T00:00:00.000Z",
  end_date: "2023-04-22T00:00:00.000Z",
  protection_plan: "Premier",
  driver_id: 1,
  car_id: 11
)

Review.create!(
  cleanliness_rating: 4,
  maintenance_rating: 5,
  communication_rating: 5,
  convenience_rating: 4,
  accuracy_rating: 5,
  comment: "I could film a movie in this car, beautiful. Would look spectacular chasing a nuclear sub, or launching off a skyscraper.",
  driver_id: 1,
  car_id: 11,
  created_at: "2023-04-25T00:00:00.000Z",
  updated_at: "2023-04-25T00:00:00.000Z"
)

Trip.create!(
  start_date: "2023-04-23T00:00:00.000Z",
  end_date: "2023-04-25T00:00:00.000Z",
  protection_plan: "Standard",
  driver_id: 3,
  car_id: 11
)

Review.create!(
  cleanliness_rating: 3,
  maintenance_rating: 4,
  communication_rating: 5,
  convenience_rating: 4,
  accuracy_rating: 4,
  comment: "The car was good, but not the best I've rented. A few minor issues with the brakes, but overall a decent experience.",
  driver_id: 3,
  car_id: 11,
  created_at: "2023-04-28T00:00:00.000Z",
  updated_at: "2023-04-28T00:00:00.000Z"
)

Trip.create!(
  start_date: "2023-04-26T00:00:00.000Z",
  end_date: "2023-04-28T00:00:00.000Z",
  protection_plan: "None",
  driver_id: 5,
  car_id: 11
)

Review.create!(
  cleanliness_rating: 2,
  maintenance_rating: 2,
  communication_rating: 3,
  convenience_rating: 3,
  accuracy_rating: 3,
  comment: "The car was not in great condition, and I had some trouble with the AC. Probably wouldn't rent again.",
  driver_id: 5,
  car_id: 11,
  created_at: "2023-05-01T00:00:00.000Z",
  updated_at: "2023-05-01T00:00:00.000Z"
)

Trip.create!(
  start_date: "2023-04-29T00:00:00.000Z",
  end_date: "2023-05-01T00:00:00.000Z",
  protection_plan: "Minimum",
  driver_id: 1,
  car_id: 11
)

Trip.create!(
  start_date: "2023-04-25T00:00:00.000Z",
  end_date: "2023-04-27T00:00:00.000Z",
  protection_plan: "Premier",
  driver_id: 6,
  car_id: 12
)

Review.create!(
  cleanliness_rating: 5,
  maintenance_rating: 5,
  communication_rating: 5,
  convenience_rating: 5,
  accuracy_rating: 5,
  comment: "This car was amazing! Super comfortable and spacious. The pickup and drop-off process was seamless.",
  driver_id: 6,
  car_id: 12,
  created_at: "2023-04-30T00:00:00.000Z",
  updated_at: "2023-04-30T00:00:00.000Z"
)


Trip.create!(
start_date: "2022-05-01T00:00:00.000Z",
end_date: "2022-05-03T00:00:00.000Z",
protection_plan: "Standard",
driver_id: 15,
car_id: 14
)

Review.create!(
cleanliness_rating: 4,
maintenance_rating: 5,
communication_rating: 4,
convenience_rating: 5,
accuracy_rating: 4,
comment: "This offroader was amazing, handled everything we threw at it.",
driver_id: 15,
car_id: 14,
created_at: "2022-05-06T00:00:00.000Z",
updated_at: "2022-05-06T00:00:00.000Z"
)

Trip.create!(
start_date: "2022-06-15T00:00:00.000Z",
end_date: "2022-06-20T00:00:00.000Z",
protection_plan: "Premier",
driver_id: 16,
car_id: 14
)

Review.create!(
cleanliness_rating: 5,
maintenance_rating: 5,
communication_rating: 5,
convenience_rating: 5,
accuracy_rating: 5,
comment: "Absolutely fantastic off-road experience, was in top condition. We saw some amazing things in the wilderness, including a moose.",
driver_id: 16,
car_id: 14,
created_at: "2022-06-23T00:00:00.000Z",
updated_at: "2022-06-23T00:00:00.000Z"
)

Trip.create!(
  start_date: "2022-10-12T00:00:00.000Z",
  end_date: "2022-10-15T00:00:00.000Z",
  protection_plan: "Premier",
  driver_id: 2,
  car_id: 15
)

Review.create!(
  cleanliness_rating: 4,
  maintenance_rating: 5,
  communication_rating: 5,
  convenience_rating: 3,
  accuracy_rating: 4,
  comment: "This car is great for long road trips! We had a blast.",
  driver_id: 2,
  car_id: 15,
  created_at: "2022-10-18T00:00:00.000Z",
  updated_at: "2022-10-18T00:00:00.000Z"
)

Trip.create!(
  start_date: "2022-11-20T00:00:00.000Z",
  end_date: "2022-11-23T00:00:00.000Z",
  protection_plan: "Standard",
  driver_id: 3,
  car_id: 15
)

Trip.create!(
  start_date: "2023-04-28T00:00:00.000Z",
  end_date: "2023-04-29T00:00:00.000Z",
  protection_plan: "Premier",
  driver_id: 5,
  car_id: 16
)

Review.create!(
  cleanliness_rating: 5,
  maintenance_rating: 4,
  communication_rating: 5,
  convenience_rating: 4,
  accuracy_rating: 5,
  comment: "Great car, drove smoothly and had no issues. Would rent again!",
  driver_id: 5,
  car_id: 16,
  created_at: "2023-04-30T00:00:00.000Z",
  updated_at: "2023-04-30T00:00:00.000Z"
)

# Trips
Trip.create!(
  start_date: "2022-08-01T00:00:00.000Z",
  end_date: "2022-08-06T00:00:00.000Z",
  protection_plan: "Premier",
  driver_id: 5,
  car_id: 17
)

Trip.create!(
  start_date: "2022-09-10T00:00:00.000Z",
  end_date: "2022-09-15T00:00:00.000Z",
  protection_plan: "Standard",
  driver_id: 2,
  car_id: 17
)

Trip.create!(
  start_date: "2022-10-01T00:00:00.000Z",
  end_date: "2022-10-05T00:00:00.000Z",
  protection_plan: "None",
  driver_id: 1,
  car_id: 17
)

Trip.create!(
  start_date: "2022-11-15T00:00:00.000Z",
  end_date: "2022-11-20T00:00:00.000Z",
  protection_plan: "Standard",
  driver_id: 8,
  car_id: 17
)

Review.create!(
  cleanliness_rating: 5,
  maintenance_rating: 4,
  communication_rating: 5,
  convenience_rating: 4,
  accuracy_rating: 5,
  comment: "Great car, very comfortable and clean",
  driver_id: 5,
  car_id: 17,
  created_at: "2022-08-10T00:00:00.000Z",
  updated_at: "2022-08-10T00:00:00.000Z"
)

Review.create!(
  cleanliness_rating: 3,
  maintenance_rating: 4,
  communication_rating: 3,
  convenience_rating: 4,
  accuracy_rating: 4,
  comment: "The car was okay, but it had a few issues",
  driver_id: 2,
  car_id: 17,
  created_at: "2022-09-20T00:00:00.000Z",
  updated_at: "2022-09-20T00:00:00.000Z"
)

Trip.create!(
  start_date: "2023-04-25T00:00:00.000Z",
  end_date: "2023-04-27T00:00:00.000Z",
  protection_plan: "Minimum",
  driver_id: 5,
  car_id: 19
)

Review.create!(
  cleanliness_rating: 5,
  maintenance_rating: 5,
  communication_rating: 5,
  convenience_rating: 4,
  accuracy_rating: 5,
  comment: "The car was in great condition and perfect for our weekend getaway!",
  driver_id: 5,
  car_id: 19,
  created_at: "2023-04-29T00:00:00.000Z",
  updated_at: "2023-04-29T00:00:00.000Z"
)

Trip.create!(
  start_date: "2022-12-18T00:00:00.000Z",
  end_date: "2022-12-27T00:00:00.000Z",
  protection_plan: "Premier",
  driver_id: 3,
  car_id: 19
)

Review.create!(
  cleanliness_rating: 5,
  maintenance_rating: 4,
  communication_rating: 5,
  convenience_rating: 5,
  accuracy_rating: 5,
  comment: "The car was in great condition overall, but we did have a minor issue with the brakes that the owner helped us resolve quickly.",
  driver_id: 3,
  car_id: 19,
  created_at: "2022-12-28T00:00:00.000Z",
  updated_at: "2022-12-28T00:00:00.000Z"
)

Trip.create!(
  start_date: "2023-04-01T00:00:00.000Z",
  end_date: "2023-04-04T00:00:00.000Z",
  protection_plan: "Premier",
  driver_id: 6,
  car_id: 20
)

Review.create!(
  cleanliness_rating: 4,
  maintenance_rating: 5,
  communication_rating: 4,
  convenience_rating: 3,
  accuracy_rating: 4,
  comment: "Great car overall, very comfortable and clean. However, had a little trouble with the AC.",
  driver_id: 6,
  car_id: 20,
  created_at: "2023-04-07T00:00:00.000Z",
  updated_at: "2023-04-07T00:00:00.000Z"
)

Trip.create!(
  start_date: "2022-09-15T00:00:00.000Z",
  end_date: "2022-09-17T00:00:00.000Z",
  protection_plan: "Standard",
  driver_id: 6,
  car_id: 21
)

Review.create!(
  cleanliness_rating: 4,
  maintenance_rating: 5,
  communication_rating: 3,
  convenience_rating: 4,
  accuracy_rating: 5,
  comment: "Great car overall, could have been cleaner though",
  driver_id: 6,
  car_id: 21,
  created_at: "2022-09-20T00:00:00.000Z",
  updated_at: "2022-09-20T00:00:00.000Z"
)

Trip.create!(
  start_date: "2022-11-01T00:00:00.000Z",
  end_date: "2022-11-03T00:00:00.000Z",
  protection_plan: "Minimum",
  driver_id: 4,
  car_id: 21
)

Review.create!(
  cleanliness_rating: 5,
  maintenance_rating: 4,
  communication_rating: 5,
  convenience_rating: 3,
  accuracy_rating: 5,
  comment: "Great car and great owner, would rent again",
  driver_id: 4,
  car_id: 21,
  created_at: "2022-11-06T00:00:00.000Z",
  updated_at: "2022-11-06T00:00:00.000Z"
)

Trip.create!(
  start_date: "2023-01-10T00:00:00.000Z",
  end_date: "2023-01-13T00:00:00.000Z",
  protection_plan: "Premier",
  driver_id: 8,
  car_id: 21
)

Trip.create!(
  start_date: "2023-03-20T00:00:00.000Z",
  end_date: "2023-03-23T00:00:00.000Z",
  protection_plan: "Minimum",
  driver_id: 2,
  car_id: 21
)

Review.create!(
  cleanliness_rating: 4,
  maintenance_rating: 5,
  communication_rating: 4,
  convenience_rating: 4,
  accuracy_rating: 4,
  comment: "Good car, but could have been more comfortable",
  driver_id: 2,
  car_id: 21,
  created_at: "2023-03-25T00:00:00.000Z",
  updated_at: "2023-03-25T00:00:00.000Z"
)

Trip.create!(
  start_date: "2023-04-15T00:00:00.000Z",
  end_date: "2023-04-20T00:00:00.000Z",
  protection_plan: "Premier",
  driver_id: 4,
  car_id: 22
)

Review.create!(
  cleanliness_rating: 4,
  maintenance_rating: 4,
  communication_rating: 5,
  convenience_rating: 4,
  accuracy_rating: 4,
  comment: "Great car, very comfortable and smooth ride. Highly recommend!",
  driver_id: 4,
  car_id: 22,
  created_at: "2023-04-23T00:00:00.000Z",
  updated_at: "2023-04-23T00:00:00.000Z"
)

Trip.create!(
  start_date: "2023-04-25T00:00:00.000Z",
  end_date: "2023-04-27T00:00:00.000Z",
  protection_plan: "Standard",
  driver_id: 5,
  car_id: 22
)

Review.create!(
  cleanliness_rating: 3,
  maintenance_rating: 3,
  communication_rating: 4,
  convenience_rating: 3,
  accuracy_rating: 3,
  comment: "The car was fine, but it didn't have some of the features I was expecting. Overall an okay experience.",
  driver_id: 5,
  car_id: 22,
  created_at: "2023-04-30T00:00:00.000Z",
  updated_at: "2023-04-30T00:00:00.000Z"
)

Trip.create!(
  start_date: "2023-03-01T00:00:00.000Z",
  end_date: "2023-03-05T00:00:00.000Z",
  protection_plan: "Premier",
  driver_id: 1,
  car_id: 23
)

Review.create!(
  cleanliness_rating: 4,
  maintenance_rating: 3,
  communication_rating: 5,
  convenience_rating: 4,
  accuracy_rating: 4,
  comment: "The car was great overall. Had a small issue with the air conditioning but it wasn't a big deal. This car handled mud and streams and rocks like it was nothing.",
  driver_id: 1,
  car_id: 23,
  created_at: "2023-03-07T00:00:00.000Z",
  updated_at: "2023-03-07T00:00:00.000Z"
)

Trip.create!(
  start_date: "2023-04-10T00:00:00.000Z",
  end_date: "2023-04-12T00:00:00.000Z",
  protection_plan: "Premier",
  driver_id: 2,
  car_id: 24
)

Review.create!(
  cleanliness_rating: 4,
  maintenance_rating: 5,
  communication_rating: 4,
  convenience_rating: 4,
  accuracy_rating: 5,
  comment: "This was a great car for our weekend trip. It was clean, comfortable, and handled well on the highway. Highly recommend!",
  driver_id: 2,
  car_id: 24,
  created_at: "2023-04-14T00:00:00.000Z",
  updated_at: "2023-04-14T00:00:00.000Z"
)

Trip.create!(
  start_date: "2023-04-15T00:00:00.000Z",
  end_date: "2023-04-20T00:00:00.000Z",
  protection_plan: "Minimum",
  driver_id: 5,
  car_id: 24
)

Review.create!(
  cleanliness_rating: 2,
  maintenance_rating: 3,
  communication_rating: 2,
  convenience_rating: 2,
  accuracy_rating: 3,
  comment: "The car was not as clean as I would have liked, and there was a weird noise coming from the engine. Also, the pickup location was a bit inconvenient for me.",
  driver_id: 5,
  car_id: 24,
  created_at: "2023-04-22T00:00:00.000Z",
  updated_at: "2023-04-22T00:00:00.000Z"
)

Trip.create!(
  start_date: "2023-04-25T00:00:00.000Z",
  end_date: "2023-04-28T00:00:00.000Z",
  protection_plan: "Standard",
  driver_id: 3,
  car_id: 24
)

Trip.create!(
  start_date: "2023-05-05T00:00:00.000Z",
  end_date: "2023-05-08T00:00:00.000Z",
  protection_plan: "Minimum",
  driver_id: 6,
  car_id: 24
)

Review.create!(
  cleanliness_rating: 4,
  maintenance_rating: 5,
  communication_rating: 4,
  convenience_rating: 4,
  accuracy_rating: 5,
  comment: "This was our first time using this service, and we were very happy with how everything turned out. The car was in great condition, and the pickup and dropoff process was easy.",
  driver_id: 3,
  car_id: 24,
  created_at: "2023-05-10T00:00:00.000Z",
  updated_at: "2023-05-10T00:00:00.000Z"
)

Trip.create!(
  start_date: "2023-07-01T00:00:00.000Z",
  end_date: "2023-07-05T00:00:00.000Z",
  protection_plan: "Premier",
  driver_id: 1,
  car_id: 21
)

Trip.create!(
  start_date: "2023-08-08T00:00:00.000Z",
  end_date: "2023-08-15T00:00:00.000Z",
  protection_plan: "Standard",
  driver_id: 1,
  car_id: 25
)

Trip.create!(
  start_date: "2024-01-02T00:00:00.000Z",
  end_date: "2024-01-13T00:00:00.000Z",
  protection_plan: "None",
  driver_id: 1,
  car_id: 22
)

  puts "Trip and review creation done!"

  puts "Creating favorites..."

Favorite.create!(
    driver_id: 1,
    car_id: 3
)

Favorite.create!(
    driver_id: 1,
    car_id: 9
)

Favorite.create!(
    driver_id: 1,
    car_id: 6
)

Favorite.create!(
    driver_id: 1,
    car_id: 7
)

Favorite.create!(
    driver_id: 1,
    car_id: 12
)

Favorite.create!(
    driver_id: 1,
    car_id: 10
)

Favorite.create!(
    driver_id: 1,
    car_id: 11
)

Favorite.create!(
    driver_id: 1,
    car_id: 16
)

puts "Favorites created!"
end

  puts "Attaching user photos..."
User.order(:id).first(25).each_with_index do |user, index|
  user.photo.attach(
    io: URI.open("https://caro-seeds.s3.us-west-1.amazonaws.com/user_profiles/#{index + 1}p.jpg"),
    filename: "user_#{index + 1}.jpg"
  )
end
    puts "User photos attached!"

    puts "Attaching car photos..."
Car.order(:id).first(25).each_with_index do |car, index|
    (1..3).each do |i|
  car.photos.attach(
    io: URI.open("https://caro-seeds.s3.us-west-1.amazonaws.com/car_pics/#{car.id}_#{i}.jpg"),
    filename: "car_#{car.id}_#{i}.jpg")
  end
end
    puts "Car photos attached!"
