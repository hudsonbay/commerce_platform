# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     CommercePlatform.Repo.insert!(%CommercePlatform.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias CommercePlatform.Repo

Faker.start()

alias CommercePlatform.Measurements.MeasurementType
alias CommercePlatform.Measurements.MeasurementUnit
alias CommercePlatform.Stock.ProductCategory
alias CommercePlatform.Stock.ProductSubcategory
alias CommercePlatform.Accounts.MembershipType
alias CommercePlatform.Stock.Product
alias CommercePlatform.Accounts.ShippingAddress
alias CommercePlatform.Orders.OrderStatus
alias CommercePlatform.Orders.Shipper

# Load countries
CommercePlatform.World.Seeds.seed!()

# inserting measurement types
Repo.insert!(%MeasurementType{type: "Length"})
Repo.insert!(%MeasurementType{type: "Area"})
Repo.insert!(%MeasurementType{type: "Volume"})
Repo.insert!(%MeasurementType{type: "Weight"})

# inserting length measurements
Repo.insert!(%MeasurementUnit{type_id: 1, unit_name: "mm"})
Repo.insert!(%MeasurementUnit{type_id: 1, unit_name: "cm"})
Repo.insert!(%MeasurementUnit{type_id: 1, unit_name: "dm"})
Repo.insert!(%MeasurementUnit{type_id: 1, unit_name: "m"})
Repo.insert!(%MeasurementUnit{type_id: 1, unit_name: "km"})

# inserting area measurements
Repo.insert!(%MeasurementUnit{type_id: 2, unit_name: "mm²"})
Repo.insert!(%MeasurementUnit{type_id: 2, unit_name: "cm²"})
Repo.insert!(%MeasurementUnit{type_id: 2, unit_name: "dm²"})
Repo.insert!(%MeasurementUnit{type_id: 2, unit_name: "m²"})
Repo.insert!(%MeasurementUnit{type_id: 2, unit_name: "km²"})

# inserting volume measurements
Repo.insert!(%MeasurementUnit{type_id: 3, unit_name: "mm³"})
Repo.insert!(%MeasurementUnit{type_id: 3, unit_name: "cm³"})
Repo.insert!(%MeasurementUnit{type_id: 3, unit_name: "dm³"})
Repo.insert!(%MeasurementUnit{type_id: 3, unit_name: "m³"})
Repo.insert!(%MeasurementUnit{type_id: 3, unit_name: "km³"})

# inserting weight measurements
Repo.insert!(%MeasurementUnit{type_id: 4, unit_name: "ct"})
Repo.insert!(%MeasurementUnit{type_id: 4, unit_name: "oz"})
Repo.insert!(%MeasurementUnit{type_id: 4, unit_name: "g"})
Repo.insert!(%MeasurementUnit{type_id: 4, unit_name: "lb"})
Repo.insert!(%MeasurementUnit{type_id: 4, unit_name: "kg"})
Repo.insert!(%MeasurementUnit{type_id: 4, unit_name: "q"})
Repo.insert!(%MeasurementUnit{type_id: 4, unit_name: "t"})

# inserting product categories
Repo.insert!(%ProductCategory{
  name: "Food",
  description: "Food related products"
})

Repo.insert!(%ProductCategory{
  name: "Transportation",
  description: "All related to transportation"
})

Repo.insert!(%ProductCategory{
  name: "Computers",
  description: "All related to computers"
})

Repo.insert!(%ProductCategory{
  name: "Services",
  description: "All related to services"
})

Repo.insert!(%ProductCategory{
  name: "Laptops",
  description: "All related to laptops"
})

Repo.insert!(%ProductCategory{
  name: "Electronics",
  description: "All related to electronics"
})

Repo.insert!(%ProductCategory{
  name: "Gaming consoles",
  description: "All related to gaming consoles"
})

Repo.insert!(%ProductCategory{
  name: "Music",
  description: "All related to music"
})

Repo.insert!(%ProductCategory{
  name: "Health",
  description: "All related to health"
})

Repo.insert!(%ProductCategory{
  name: "Home",
  description: "All related to home appliances"
})

# inserting product subcategories
Repo.insert!(%ProductSubcategory{
  product_category_id: 1,
  name: "Frozen",
  description: ""
})

Repo.insert!(%ProductSubcategory{
  product_category_id: 1,
  name: "Vegetables",
  description: ""
})

Repo.insert!(%ProductSubcategory{
  product_category_id: 1,
  name: "Meats",
  description: ""
})

Repo.insert!(%ProductSubcategory{
  product_category_id: 2,
  name: "Cars",
  description: ""
})

Repo.insert!(%ProductSubcategory{
  product_category_id: 2,
  name: "Bikes",
  description: ""
})

Repo.insert!(%ProductSubcategory{
  product_category_id: 3,
  name: "Parts",
  description: ""
})

Repo.insert!(%ProductSubcategory{
  product_category_id: 3,
  name: "Monitors",
  description: ""
})

Repo.insert!(%ProductSubcategory{
  product_category_id: 3,
  name: "Video cards",
  description: ""
})

Repo.insert!(%ProductSubcategory{
  product_category_id: 3,
  name: "Motherboards",
  description: ""
})

Repo.insert!(%ProductSubcategory{
  product_category_id: 4,
  name: "Gym trainers",
  description: ""
})

Repo.insert!(%ProductSubcategory{
  product_category_id: 4,
  name: "Courses",
  description: ""
})

Repo.insert!(%ProductSubcategory{
  product_category_id: 4,
  name: "Style",
  description: ""
})

Repo.insert!(%ProductSubcategory{
  product_category_id: 5,
  name: "Laptops",
  description: ""
})

Repo.insert!(%ProductSubcategory{
  product_category_id: 5,
  name: "Components",
  description: ""
})

Repo.insert!(%ProductSubcategory{
  product_category_id: 6,
  name: "Transistors",
  description: ""
})

Repo.insert!(%ProductSubcategory{
  product_category_id: 6,
  name: "Valves",
  description: ""
})

Repo.insert!(%ProductSubcategory{
  product_category_id: 6,
  name: "Tools",
  description: ""
})

Repo.insert!(%ProductSubcategory{
  product_category_id: 7,
  name: "Gaming consoles",
  description: ""
})

Repo.insert!(%ProductSubcategory{
  product_category_id: 7,
  name: "Accesories",
  description: ""
})

Repo.insert!(%ProductSubcategory{
  product_category_id: 8,
  name: "Wind instruments",
  description: ""
})

Repo.insert!(%ProductSubcategory{
  product_category_id: 8,
  name: "Pianos",
  description: ""
})

Repo.insert!(%ProductSubcategory{
  product_category_id: 8,
  name: "Guitars",
  description: ""
})

Repo.insert!(%ProductSubcategory{
  product_category_id: 8,
  name: "Accesories",
  description: ""
})

Repo.insert!(%ProductSubcategory{
  product_category_id: 9,
  name: "Pills",
  description: ""
})

Repo.insert!(%ProductSubcategory{
  product_category_id: 8,
  name: "Syrups",
  description: ""
})

Repo.insert!(%ProductSubcategory{
  product_category_id: 9,
  name: "Kitchen",
  description: ""
})

Repo.insert!(%ProductSubcategory{
  product_category_id: 9,
  name: "Beds",
  description: ""
})

# inserting fake products
for _ <- 0..25 do
  name = Faker.Commerce.En.product_name()
  price = Faker.Commerce.price()
  weight = Faker.Commerce.price()
  size = Faker.Commerce.price()
  description = Faker.Lorem.paragraph()
  thumbnail = Faker.File.file_name(:image)
  stock = Faker.random_between(1, 25)
  product_subcategory_id = Faker.random_between(1, 27)

  prod = %Product{
    name: name,
    price: price,
    weight: weight,
    size: size,
    description: description,
    thumbnail: thumbnail,
    stock: stock,
    product_subcategory_id: product_subcategory_id
  }

  Repo.insert!(prod)
end

# inserting membership types
Repo.insert!(%MembershipType{
  name: "NONE",
  description: "User does not have a membership",
  card_img: "non-member.jpg"
})

Repo.insert!(%MembershipType{
  name: "PLATINUM",
  description: "User has a 5% discount in all purchases",
  card_img: "platinum.jpg"
})

Repo.insert!(%MembershipType{
  name: "GOLDEN",
  description: "User has a 10% discount in all purchases",
  card_img: "golden.jpg"
})

# inserting fake users
for _ <- 0..10 do
  first_name = Faker.Person.first_name()
  last_name = Faker.Person.last_name()
  email = Faker.Internet.email()
  password = "User-123"
  password_confirmation = "User-123"
  role = "user"
  phone = Faker.Phone.EnUs.phone()
  membership_type_id = Faker.random_between(1, 3)

  user = %{
    first_name: first_name,
    last_name: last_name,
    email: email,
    password: password,
    password_confirmation: password_confirmation,
    role: role,
    phone: phone,
    membership_type_id: membership_type_id
  }

  {:ok, _} = CommercePlatform.Accounts.create_user(user)

  # Repo.insert!(user)
end

# inserting admin user
admin = %{
  first_name: "Manuel",
  last_name: "Menendez",
  email: "manuel@gmail.com",
  password: "User-123",
  password_confirmation: "User-123",
  role: "admin",
  phone: "76499650",
  membership_type_id: 1
}

{:ok, _} = CommercePlatform.Accounts.create_user(admin)

# insert fake shipping addresses
for _ <- 0..50 do
  address = Faker.Address.En.secondary_address()
  postal_code = Faker.Address.En.zip_code()
  phone = Faker.Phone.EnUs.phone()
  user_id = Faker.random_between(1, 10)
  country_id = Faker.random_between(1, 200)

  shipping_address = %ShippingAddress{
    address: address,
    postal_code: postal_code,
    phone: phone,
    user_id: user_id,
    country_id: country_id
  }

  Repo.insert!(shipping_address)
end

# inserting order status
Repo.insert!(%OrderStatus{
  name: "Processing",
  description: "Order being processed by the system"
})

Repo.insert!(%OrderStatus{
  name: "Queued",
  description: "The order is on queue"
})

Repo.insert!(%OrderStatus{
  name: "Delivering",
  description: "Order is being delivered"
})

Repo.insert!(%OrderStatus{
  name: "Delivered",
  description: "Order was delivered"
})

Repo.insert!(%OrderStatus{
  name: "Paid",
  description: "Order was paid"
})

# inserting shipping companies
Repo.insert!(%Shipper{
  company_name: "Aerovaradero",
  description: "Aerovaradero description",
  phone: "54673459560",
  email: "aerovaradero@aero.com",
  website: "https://www.aerovaradero.com",
  picture: "aero.jpg"
})

Repo.insert!(%Shipper{
  company_name: "Cubapack",
  description: "Cubapack description",
  phone: "3593960560",
  email: "cuba@pack.com",
  website: "https://www.cubapack.com",
  picture: "cpack.jpg"
})
