defmodule CommercePlatform.MeasurementUnitTest do
  use CommercePlatform.DataCase

  alias CommercePlatform.MeasurementUnit

  describe "measurement_types" do
    alias CommercePlatform.MeasurementUnit.MeasurementType

    @valid_attrs %{type: "some type"}
    @update_attrs %{type: "some updated type"}
    @invalid_attrs %{type: nil}

    def measurement_type_fixture(attrs \\ %{}) do
      {:ok, measurement_type} =
        attrs
        |> Enum.into(@valid_attrs)
        |> MeasurementUnit.create_measurement_type()

      measurement_type
    end

    test "list_measurement_types/0 returns all measurement_types" do
      measurement_type = measurement_type_fixture()
      assert MeasurementUnit.list_measurement_types() == [measurement_type]
    end

    test "get_measurement_type!/1 returns the measurement_type with given id" do
      measurement_type = measurement_type_fixture()
      assert MeasurementUnit.get_measurement_type!(measurement_type.id) == measurement_type
    end

    test "create_measurement_type/1 with valid data creates a measurement_type" do
      assert {:ok, %MeasurementType{} = measurement_type} = MeasurementUnit.create_measurement_type(@valid_attrs)
      assert measurement_type.type == "some type"
    end

    test "create_measurement_type/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = MeasurementUnit.create_measurement_type(@invalid_attrs)
    end

    test "update_measurement_type/2 with valid data updates the measurement_type" do
      measurement_type = measurement_type_fixture()
      assert {:ok, %MeasurementType{} = measurement_type} = MeasurementUnit.update_measurement_type(measurement_type, @update_attrs)
      assert measurement_type.type == "some updated type"
    end

    test "update_measurement_type/2 with invalid data returns error changeset" do
      measurement_type = measurement_type_fixture()
      assert {:error, %Ecto.Changeset{}} = MeasurementUnit.update_measurement_type(measurement_type, @invalid_attrs)
      assert measurement_type == MeasurementUnit.get_measurement_type!(measurement_type.id)
    end

    test "delete_measurement_type/1 deletes the measurement_type" do
      measurement_type = measurement_type_fixture()
      assert {:ok, %MeasurementType{}} = MeasurementUnit.delete_measurement_type(measurement_type)
      assert_raise Ecto.NoResultsError, fn -> MeasurementUnit.get_measurement_type!(measurement_type.id) end
    end

    test "change_measurement_type/1 returns a measurement_type changeset" do
      measurement_type = measurement_type_fixture()
      assert %Ecto.Changeset{} = MeasurementUnit.change_measurement_type(measurement_type)
    end
  end
end
