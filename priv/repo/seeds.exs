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
