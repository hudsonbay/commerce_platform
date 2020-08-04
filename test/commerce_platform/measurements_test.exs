defmodule CommercePlatform.MeasurementsTest do
  # use CommercePlatform.DataCase

  # alias CommercePlatform.Measurements

  # describe "measurement_types" do
  #   alias CommercePlatform.Measurements.MeasurementType

  #   @valid_attrs %{type: "some type"}
  #   @update_attrs %{type: "some updated type"}
  #   @invalid_attrs %{type: nil}

  #   def measurement_type_fixture(attrs \\ %{}) do
  #     {:ok, measurement_type} =
  #       attrs
  #       |> Enum.into(@valid_attrs)
  #       |> Measurements.create_measurement_type()

  #     measurement_type
  #   end

  #   test "list_measurement_types/0 returns all measurement_types" do
  #     measurement_type = measurement_type_fixture()
  #     assert Measurements.list_measurement_types() == [measurement_type]
  #   end

  #   test "get_measurement_type!/1 returns the measurement_type with given id" do
  #     measurement_type = measurement_type_fixture()
  #     assert Measurements.get_measurement_type!(measurement_type.id) == measurement_type
  #   end

  #   test "create_measurement_type/1 with valid data creates a measurement_type" do
  #     assert {:ok, %MeasurementType{} = measurement_type} =
  #              Measurements.create_measurement_type(@valid_attrs)

  #     assert measurement_type.type == "some type"
  #   end

  #   test "create_measurement_type/1 with invalid data returns error changeset" do
  #     assert {:error, %Ecto.Changeset{}} = Measurements.create_measurement_type(@invalid_attrs)
  #   end

  #   test "update_measurement_type/2 with valid data updates the measurement_type" do
  #     measurement_type = measurement_type_fixture()

  #     assert {:ok, %MeasurementType{} = measurement_type} =
  #              Measurements.update_measurement_type(measurement_type, @update_attrs)

  #     assert measurement_type.type == "some updated type"
  #   end

  #   test "update_measurement_type/2 with invalid data returns error changeset" do
  #     measurement_type = measurement_type_fixture()

  #     assert {:error, %Ecto.Changeset{}} =
  #              Measurements.update_measurement_type(measurement_type, @invalid_attrs)

  #     assert measurement_type == Measurements.get_measurement_type!(measurement_type.id)
  #   end

  #   test "delete_measurement_type/1 deletes the measurement_type" do
  #     measurement_type = measurement_type_fixture()
  #     assert {:ok, %MeasurementType{}} = Measurements.delete_measurement_type(measurement_type)

  #     assert_raise Ecto.NoResultsError, fn ->
  #       Measurements.get_measurement_type!(measurement_type.id)
  #     end
  #   end

  #   test "change_measurement_type/1 returns a measurement_type changeset" do
  #     measurement_type = measurement_type_fixture()
  #     assert %Ecto.Changeset{} = Measurements.change_measurement_type(measurement_type)
  #   end
  # end

  # describe "measurement_units" do
  #   alias CommercePlatform.Measurements.MeasurementUnit

  #   @valid_attrs %{unit_name: "some unit_name"}
  #   @update_attrs %{unit_name: "some updated unit_name"}
  #   @invalid_attrs %{unit_name: nil}

  #   def measurement_unit_fixture(attrs \\ %{}) do
  #     {:ok, measurement_unit} =
  #       attrs
  #       |> Enum.into(@valid_attrs)
  #       |> Measurements.create_measurement_unit()

  #     measurement_unit
  #   end

  #   test "list_measurement_units/0 returns all measurement_units" do
  #     measurement_unit = measurement_unit_fixture()
  #     assert Measurements.list_measurement_units() == [measurement_unit]
  #   end

  #   test "get_measurement_unit!/1 returns the measurement_unit with given id" do
  #     measurement_unit = measurement_unit_fixture()
  #     assert Measurements.get_measurement_unit!(measurement_unit.id) == measurement_unit
  #   end

  #   test "create_measurement_unit/1 with valid data creates a measurement_unit" do
  #     assert {:ok, %MeasurementUnit{} = measurement_unit} =
  #              Measurements.create_measurement_unit(@valid_attrs)

  #     assert measurement_unit.unit_name == "some unit_name"
  #   end

  #   test "create_measurement_unit/1 with invalid data returns error changeset" do
  #     assert {:error, %Ecto.Changeset{}} = Measurements.create_measurement_unit(@invalid_attrs)
  #   end

  #   test "update_measurement_unit/2 with valid data updates the measurement_unit" do
  #     measurement_unit = measurement_unit_fixture()

  #     assert {:ok, %MeasurementUnit{} = measurement_unit} =
  #              Measurements.update_measurement_unit(measurement_unit, @update_attrs)

  #     assert measurement_unit.unit_name == "some updated unit_name"
  #   end

  #   test "update_measurement_unit/2 with invalid data returns error changeset" do
  #     measurement_unit = measurement_unit_fixture()

  #     assert {:error, %Ecto.Changeset{}} =
  #              Measurements.update_measurement_unit(measurement_unit, @invalid_attrs)

  #     assert measurement_unit == Measurements.get_measurement_unit!(measurement_unit.id)
  #   end

  #   test "delete_measurement_unit/1 deletes the measurement_unit" do
  #     measurement_unit = measurement_unit_fixture()
  #     assert {:ok, %MeasurementUnit{}} = Measurements.delete_measurement_unit(measurement_unit)

  #     assert_raise Ecto.NoResultsError, fn ->
  #       Measurements.get_measurement_unit!(measurement_unit.id)
  #     end
  #   end

  #   test "change_measurement_unit/1 returns a measurement_unit changeset" do
  #     measurement_unit = measurement_unit_fixture()
  #     assert %Ecto.Changeset{} = Measurements.change_measurement_unit(measurement_unit)
  #   end
  # end
end
