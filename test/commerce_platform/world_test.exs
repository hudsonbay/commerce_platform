defmodule CommercePlatform.WorldTest do
  use CommercePlatform.DataCase

  alias CommercePlatform.World

  describe "cities" do
    alias CommercePlatform.World.City

    @valid_attrs %{countrycode: "some countrycode", district: "some district", name: "some name", population: 42}
    @update_attrs %{countrycode: "some updated countrycode", district: "some updated district", name: "some updated name", population: 43}
    @invalid_attrs %{countrycode: nil, district: nil, name: nil, population: nil}

    def city_fixture(attrs \\ %{}) do
      {:ok, city} =
        attrs
        |> Enum.into(@valid_attrs)
        |> World.create_city()

      city
    end

    test "list_cities/0 returns all cities" do
      city = city_fixture()
      assert World.list_cities() == [city]
    end

    test "get_city!/1 returns the city with given id" do
      city = city_fixture()
      assert World.get_city!(city.id) == city
    end

    test "create_city/1 with valid data creates a city" do
      assert {:ok, %City{} = city} = World.create_city(@valid_attrs)
      assert city.countrycode == "some countrycode"
      assert city.district == "some district"
      assert city.name == "some name"
      assert city.population == 42
    end

    test "create_city/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = World.create_city(@invalid_attrs)
    end

    test "update_city/2 with valid data updates the city" do
      city = city_fixture()
      assert {:ok, %City{} = city} = World.update_city(city, @update_attrs)
      assert city.countrycode == "some updated countrycode"
      assert city.district == "some updated district"
      assert city.name == "some updated name"
      assert city.population == 43
    end

    test "update_city/2 with invalid data returns error changeset" do
      city = city_fixture()
      assert {:error, %Ecto.Changeset{}} = World.update_city(city, @invalid_attrs)
      assert city == World.get_city!(city.id)
    end

    test "delete_city/1 deletes the city" do
      city = city_fixture()
      assert {:ok, %City{}} = World.delete_city(city)
      assert_raise Ecto.NoResultsError, fn -> World.get_city!(city.id) end
    end

    test "change_city/1 returns a city changeset" do
      city = city_fixture()
      assert %Ecto.Changeset{} = World.change_city(city)
    end
  end
end
