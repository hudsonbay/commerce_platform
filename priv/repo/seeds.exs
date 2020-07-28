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

alias CommercePlatform.Measurements.MeasurementType
alias CommercePlatform.Measurements.MeasurementUnit
alias CommercePlatform.Stock.ProductCategory
alias CommercePlatform.Stock.ProductSubcategory

# inserting measurement types
CommercePlatform.Repo.insert!(%MeasurementType{type: "Length"})
CommercePlatform.Repo.insert!(%MeasurementType{type: "Area"})
CommercePlatform.Repo.insert!(%MeasurementType{type: "Volume"})
CommercePlatform.Repo.insert!(%MeasurementType{type: "Weight"})

# inserting length measurements
CommercePlatform.Repo.insert!(%MeasurementUnit{type_id: 1, unit_name: "mm"})
CommercePlatform.Repo.insert!(%MeasurementUnit{type_id: 1, unit_name: "cm"})
CommercePlatform.Repo.insert!(%MeasurementUnit{type_id: 1, unit_name: "dm"})
CommercePlatform.Repo.insert!(%MeasurementUnit{type_id: 1, unit_name: "m"})
CommercePlatform.Repo.insert!(%MeasurementUnit{type_id: 1, unit_name: "km"})

# inserting area measurements
CommercePlatform.Repo.insert!(%MeasurementUnit{type_id: 2, unit_name: "mm²"})
CommercePlatform.Repo.insert!(%MeasurementUnit{type_id: 2, unit_name: "cm²"})
CommercePlatform.Repo.insert!(%MeasurementUnit{type_id: 2, unit_name: "dm²"})
CommercePlatform.Repo.insert!(%MeasurementUnit{type_id: 2, unit_name: "m²"})
CommercePlatform.Repo.insert!(%MeasurementUnit{type_id: 2, unit_name: "km²"})

# inserting volume measurements
CommercePlatform.Repo.insert!(%MeasurementUnit{type_id: 3, unit_name: "mm³"})
CommercePlatform.Repo.insert!(%MeasurementUnit{type_id: 3, unit_name: "cm³"})
CommercePlatform.Repo.insert!(%MeasurementUnit{type_id: 3, unit_name: "dm³"})
CommercePlatform.Repo.insert!(%MeasurementUnit{type_id: 3, unit_name: "m³"})
CommercePlatform.Repo.insert!(%MeasurementUnit{type_id: 3, unit_name: "km³"})

# inserting weight measurements
CommercePlatform.Repo.insert!(%MeasurementUnit{type_id: 4, unit_name: "ct"})
CommercePlatform.Repo.insert!(%MeasurementUnit{type_id: 4, unit_name: "oz"})
CommercePlatform.Repo.insert!(%MeasurementUnit{type_id: 4, unit_name: "g"})
CommercePlatform.Repo.insert!(%MeasurementUnit{type_id: 4, unit_name: "lb"})
CommercePlatform.Repo.insert!(%MeasurementUnit{type_id: 4, unit_name: "kg"})
CommercePlatform.Repo.insert!(%MeasurementUnit{type_id: 4, unit_name: "q"})
CommercePlatform.Repo.insert!(%MeasurementUnit{type_id: 4, unit_name: "t"})

# inserting product categories
CommercePlatform.Repo.insert!(%ProductCategory{
  name: "Food",
  description: "Food related products"
})

CommercePlatform.Repo.insert!(%ProductCategory{
  name: "Transportation",
  description: "All related to transportation"
})

CommercePlatform.Repo.insert!(%ProductCategory{
  name: "Computers",
  description: "All related to computers"
})

CommercePlatform.Repo.insert!(%ProductCategory{
  name: "Services",
  description: "All related to services"
})

CommercePlatform.Repo.insert!(%ProductCategory{
  name: "Laptops",
  description: "All related to laptops"
})

CommercePlatform.Repo.insert!(%ProductCategory{
  name: "Electronics",
  description: "All related to electronics"
})

CommercePlatform.Repo.insert!(%ProductCategory{
  name: "Gaming consoles",
  description: "All related to gaming consoles"
})

CommercePlatform.Repo.insert!(%ProductCategory{
  name: "Music",
  description: "All related to music"
})

CommercePlatform.Repo.insert!(%ProductCategory{
  name: "Health",
  description: "All related to health"
})

CommercePlatform.Repo.insert!(%ProductCategory{
  name: "Home",
  description: "All related to home appliances"
})

# inserting product subcategories
CommercePlatform.Repo.insert!(%ProductSubcategory{
  product_category_id: 1,
  name: "Frozen",
  description: ""
})

CommercePlatform.Repo.insert!(%ProductSubcategory{
  product_category_id: 1,
  name: "Vegetables",
  description: ""
})

CommercePlatform.Repo.insert!(%ProductSubcategory{
  product_category_id: 1,
  name: "Meats",
  description: ""
})

CommercePlatform.Repo.insert!(%ProductSubcategory{
  product_category_id: 2,
  name: "Cars",
  description: ""
})

CommercePlatform.Repo.insert!(%ProductSubcategory{
  product_category_id: 2,
  name: "Bikes",
  description: ""
})

CommercePlatform.Repo.insert!(%ProductSubcategory{
  product_category_id: 3,
  name: "Parts",
  description: ""
})

CommercePlatform.Repo.insert!(%ProductSubcategory{
  product_category_id: 3,
  name: "Monitors",
  description: ""
})

CommercePlatform.Repo.insert!(%ProductSubcategory{
  product_category_id: 3,
  name: "Video cards",
  description: ""
})

CommercePlatform.Repo.insert!(%ProductSubcategory{
  product_category_id: 3,
  name: "Motherboards",
  description: ""
})

CommercePlatform.Repo.insert!(%ProductSubcategory{
  product_category_id: 4,
  name: "Gym trainers",
  description: ""
})

CommercePlatform.Repo.insert!(%ProductSubcategory{
  product_category_id: 4,
  name: "Courses",
  description: ""
})

CommercePlatform.Repo.insert!(%ProductSubcategory{
  product_category_id: 4,
  name: "Style",
  description: ""
})

CommercePlatform.Repo.insert!(%ProductSubcategory{
  product_category_id: 5,
  name: "Laptops",
  description: ""
})

CommercePlatform.Repo.insert!(%ProductSubcategory{
  product_category_id: 5,
  name: "Components",
  description: ""
})

CommercePlatform.Repo.insert!(%ProductSubcategory{
  product_category_id: 6,
  name: "Transistors",
  description: ""
})

CommercePlatform.Repo.insert!(%ProductSubcategory{
  product_category_id: 6,
  name: "Valves",
  description: ""
})

CommercePlatform.Repo.insert!(%ProductSubcategory{
  product_category_id: 6,
  name: "Tools",
  description: ""
})

CommercePlatform.Repo.insert!(%ProductSubcategory{
  product_category_id: 7,
  name: "Gaming consoles",
  description: ""
})

CommercePlatform.Repo.insert!(%ProductSubcategory{
  product_category_id: 7,
  name: "Accesories",
  description: ""
})

CommercePlatform.Repo.insert!(%ProductSubcategory{
  product_category_id: 8,
  name: "Wind instruments",
  description: ""
})

CommercePlatform.Repo.insert!(%ProductSubcategory{
  product_category_id: 8,
  name: "Pianos",
  description: ""
})

CommercePlatform.Repo.insert!(%ProductSubcategory{
  product_category_id: 8,
  name: "Guitars",
  description: ""
})

CommercePlatform.Repo.insert!(%ProductSubcategory{
  product_category_id: 8,
  name: "Accesories",
  description: ""
})

CommercePlatform.Repo.insert!(%ProductSubcategory{
  product_category_id: 9,
  name: "Pills",
  description: ""
})

CommercePlatform.Repo.insert!(%ProductSubcategory{
  product_category_id: 8,
  name: "Syrups",
  description: ""
})

CommercePlatform.Repo.insert!(%ProductSubcategory{
  product_category_id: 9,
  name: "Kitchen",
  description: ""
})

CommercePlatform.Repo.insert!(%ProductSubcategory{
  product_category_id: 9,
  name: "Beds",
  description: ""
})
