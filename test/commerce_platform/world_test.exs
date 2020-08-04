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

  describe "countries" do
    alias CommercePlatform.World.Country

    @valid_attrs %{iso: "some iso", iso3: "some iso3", iso_name: "some iso_name", name: "some name", num_code: "some num_code"}
    @update_attrs %{iso: "some updated iso", iso3: "some updated iso3", iso_name: "some updated iso_name", name: "some updated name", num_code: "some updated num_code"}
    @invalid_attrs %{iso: nil, iso3: nil, iso_name: nil, name: nil, num_code: nil}

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
      assert country.iso == "some iso"
      assert country.iso3 == "some iso3"
      assert country.iso_name == "some iso_name"
      assert country.name == "some name"
      assert country.num_code == "some num_code"
    end

    test "create_country/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = World.create_country(@invalid_attrs)
    end

    test "update_country/2 with valid data updates the country" do
      country = country_fixture()
      assert {:ok, %Country{} = country} = World.update_country(country, @update_attrs)
      assert country.iso == "some updated iso"
      assert country.iso3 == "some updated iso3"
      assert country.iso_name == "some updated iso_name"
      assert country.name == "some updated name"
      assert country.num_code == "some updated num_code"
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

  describe "states" do
    alias CommercePlatform.World.State

    @valid_attrs %{abbr: "some abbr", name: "some name"}
    @update_attrs %{abbr: "some updated abbr", name: "some updated name"}
    @invalid_attrs %{abbr: nil, name: nil}

    def state_fixture(attrs \\ %{}) do
      {:ok, state} =
        attrs
        |> Enum.into(@valid_attrs)
        |> World.create_state()

      state
    end

    test "list_states/0 returns all states" do
      state = state_fixture()
      assert World.list_states() == [state]
    end

    test "get_state!/1 returns the state with given id" do
      state = state_fixture()
      assert World.get_state!(state.id) == state
    end

    test "create_state/1 with valid data creates a state" do
      assert {:ok, %State{} = state} = World.create_state(@valid_attrs)
      assert state.abbr == "some abbr"
      assert state.name == "some name"
    end

    test "create_state/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = World.create_state(@invalid_attrs)
    end

    test "update_state/2 with valid data updates the state" do
      state = state_fixture()
      assert {:ok, %State{} = state} = World.update_state(state, @update_attrs)
      assert state.abbr == "some updated abbr"
      assert state.name == "some updated name"
    end

    test "update_state/2 with invalid data returns error changeset" do
      state = state_fixture()
      assert {:error, %Ecto.Changeset{}} = World.update_state(state, @invalid_attrs)
      assert state == World.get_state!(state.id)
    end

    test "delete_state/1 deletes the state" do
      state = state_fixture()
      assert {:ok, %State{}} = World.delete_state(state)
      assert_raise Ecto.NoResultsError, fn -> World.get_state!(state.id) end
    end

    test "change_state/1 returns a state changeset" do
      state = state_fixture()
      assert %Ecto.Changeset{} = World.change_state(state)
    end
  end

  describe "zones" do
    alias CommercePlatform.World.Zone

    @valid_attrs %{description: "some description", name: "some name", type: "some type"}
    @update_attrs %{description: "some updated description", name: "some updated name", type: "some updated type"}
    @invalid_attrs %{description: nil, name: nil, type: nil}

    def zone_fixture(attrs \\ %{}) do
      {:ok, zone} =
        attrs
        |> Enum.into(@valid_attrs)
        |> World.create_zone()

      zone
    end

    test "list_zones/0 returns all zones" do
      zone = zone_fixture()
      assert World.list_zones() == [zone]
    end

    test "get_zone!/1 returns the zone with given id" do
      zone = zone_fixture()
      assert World.get_zone!(zone.id) == zone
    end

    test "create_zone/1 with valid data creates a zone" do
      assert {:ok, %Zone{} = zone} = World.create_zone(@valid_attrs)
      assert zone.description == "some description"
      assert zone.name == "some name"
      assert zone.type == "some type"
    end

    test "create_zone/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = World.create_zone(@invalid_attrs)
    end

    test "update_zone/2 with valid data updates the zone" do
      zone = zone_fixture()
      assert {:ok, %Zone{} = zone} = World.update_zone(zone, @update_attrs)
      assert zone.description == "some updated description"
      assert zone.name == "some updated name"
      assert zone.type == "some updated type"
    end

    test "update_zone/2 with invalid data returns error changeset" do
      zone = zone_fixture()
      assert {:error, %Ecto.Changeset{}} = World.update_zone(zone, @invalid_attrs)
      assert zone == World.get_zone!(zone.id)
    end

    test "delete_zone/1 deletes the zone" do
      zone = zone_fixture()
      assert {:ok, %Zone{}} = World.delete_zone(zone)
      assert_raise Ecto.NoResultsError, fn -> World.get_zone!(zone.id) end
    end

    test "change_zone/1 returns a zone changeset" do
      zone = zone_fixture()
      assert %Ecto.Changeset{} = World.change_zone(zone)
    end
  end

  describe "zone_members" do
    alias CommercePlatform.World.ZoneMember

    @valid_attrs %{zoneable_id: 42}
    @update_attrs %{zoneable_id: 43}
    @invalid_attrs %{zoneable_id: nil}

    def zone_member_fixture(attrs \\ %{}) do
      {:ok, zone_member} =
        attrs
        |> Enum.into(@valid_attrs)
        |> World.create_zone_member()

      zone_member
    end

    test "list_zone_members/0 returns all zone_members" do
      zone_member = zone_member_fixture()
      assert World.list_zone_members() == [zone_member]
    end

    test "get_zone_member!/1 returns the zone_member with given id" do
      zone_member = zone_member_fixture()
      assert World.get_zone_member!(zone_member.id) == zone_member
    end

    test "create_zone_member/1 with valid data creates a zone_member" do
      assert {:ok, %ZoneMember{} = zone_member} = World.create_zone_member(@valid_attrs)
      assert zone_member.zoneable_id == 42
    end

    test "create_zone_member/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = World.create_zone_member(@invalid_attrs)
    end

    test "update_zone_member/2 with valid data updates the zone_member" do
      zone_member = zone_member_fixture()
      assert {:ok, %ZoneMember{} = zone_member} = World.update_zone_member(zone_member, @update_attrs)
      assert zone_member.zoneable_id == 43
    end

    test "update_zone_member/2 with invalid data returns error changeset" do
      zone_member = zone_member_fixture()
      assert {:error, %Ecto.Changeset{}} = World.update_zone_member(zone_member, @invalid_attrs)
      assert zone_member == World.get_zone_member!(zone_member.id)
    end

    test "delete_zone_member/1 deletes the zone_member" do
      zone_member = zone_member_fixture()
      assert {:ok, %ZoneMember{}} = World.delete_zone_member(zone_member)
      assert_raise Ecto.NoResultsError, fn -> World.get_zone_member!(zone_member.id) end
    end

    test "change_zone_member/1 returns a zone_member changeset" do
      zone_member = zone_member_fixture()
      assert %Ecto.Changeset{} = World.change_zone_member(zone_member)
    end
  end
end
