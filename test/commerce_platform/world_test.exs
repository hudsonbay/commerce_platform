defmodule CommercePlatform.WorldTest do
  use CommercePlatform.DataCase

  alias CommercePlatform.World

  describe "cities" do
    alias CommercePlatform.World.City

    @valid_attrs %{
      countrycode: "some countrycode",
      district: "some district",
      name: "some name",
      population: 42
    }
    @update_attrs %{
      countrycode: "some updated countrycode",
      district: "some updated district",
      name: "some updated name",
      population: 43
    }
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

  describe "countries" do
    alias CommercePlatform.World.Country

    @valid_attrs %{
      capital: 42,
      code: "some code",
      code2: "some code2",
      continent: "some continent",
      gnp: 120.5,
      gnpold: 120.5,
      government_form: "some government_form",
      head_of_state: "some head_of_state",
      indepyear: 42,
      life_expectancy: 120.5,
      local_name: "some local_name",
      name: "some name",
      population: 42,
      region: "some region",
      surface_area: 120.5
    }
    @update_attrs %{
      capital: 43,
      code: "some updated code",
      code2: "some updated code2",
      continent: "some updated continent",
      gnp: 456.7,
      gnpold: 456.7,
      government_form: "some updated government_form",
      head_of_state: "some updated head_of_state",
      indepyear: 43,
      life_expectancy: 456.7,
      local_name: "some updated local_name",
      name: "some updated name",
      population: 43,
      region: "some updated region",
      surface_area: 456.7
    }
    @invalid_attrs %{
      capital: nil,
      code: nil,
      code2: nil,
      continent: nil,
      gnp: nil,
      gnpold: nil,
      government_form: nil,
      head_of_state: nil,
      indepyear: nil,
      life_expectancy: nil,
      local_name: nil,
      name: nil,
      population: nil,
      region: nil,
      surface_area: nil
    }

    def country_fixture(attrs \\ %{}) do
      {:ok, country} =
        attrs
        |> Enum.into(@valid_attrs)
        |> World.create_country()

      country
    end

    test "list_countries/0 returns all countries" do
      country = country_fixture()
      assert World.list_countries() == [country]
    end

    test "get_country!/1 returns the country with given id" do
      country = country_fixture()
      assert World.get_country!(country.id) == country
    end

    test "create_country/1 with valid data creates a country" do
      assert {:ok, %Country{} = country} = World.create_country(@valid_attrs)
      assert country.capital == 42
      assert country.code == "some code"
      assert country.code2 == "some code2"
      assert country.continent == "some continent"
      assert country.gnp == 120.5
      assert country.gnpold == 120.5
      assert country.government_form == "some government_form"
      assert country.head_of_state == "some head_of_state"
      assert country.indepyear == 42
      assert country.life_expectancy == 120.5
      assert country.local_name == "some local_name"
      assert country.name == "some name"
      assert country.population == 42
      assert country.region == "some region"
      assert country.surface_area == 120.5
    end

    test "create_country/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = World.create_country(@invalid_attrs)
    end

    test "update_country/2 with valid data updates the country" do
      country = country_fixture()
      assert {:ok, %Country{} = country} = World.update_country(country, @update_attrs)
      assert country.capital == 43
      assert country.code == "some updated code"
      assert country.code2 == "some updated code2"
      assert country.continent == "some updated continent"
      assert country.gnp == 456.7
      assert country.gnpold == 456.7
      assert country.government_form == "some updated government_form"
      assert country.head_of_state == "some updated head_of_state"
      assert country.indepyear == 43
      assert country.life_expectancy == 456.7
      assert country.local_name == "some updated local_name"
      assert country.name == "some updated name"
      assert country.population == 43
      assert country.region == "some updated region"
      assert country.surface_area == 456.7
    end

    test "update_country/2 with invalid data returns error changeset" do
      country = country_fixture()
      assert {:error, %Ecto.Changeset{}} = World.update_country(country, @invalid_attrs)
      assert country == World.get_country!(country.id)
    end

    test "delete_country/1 deletes the country" do
      country = country_fixture()
      assert {:ok, %Country{}} = World.delete_country(country)
      assert_raise Ecto.NoResultsError, fn -> World.get_country!(country.id) end
    end

    test "change_country/1 returns a country changeset" do
      country = country_fixture()
      assert %Ecto.Changeset{} = World.change_country(country)
    end
  end
end
