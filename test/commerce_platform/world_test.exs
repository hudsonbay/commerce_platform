defmodule CommercePlatform.WorldTest do
  # use CommercePlatform.DataCase

  # alias CommercePlatform.World

  # describe "countries" do
  #   alias CommercePlatform.World.Country

  #   @valid_attrs %{
  #     iso: "some iso",
  #     iso3: "some iso3",
  #     iso_name: "some iso_name",
  #     name: "some name"
  #   }
  #   @update_attrs %{
  #     iso: "some updated iso",
  #     iso3: "some updated iso3",
  #     iso_name: "some updated iso_name",
  #     name: "some updated name"
  #   }
  #   @invalid_attrs %{iso: nil, iso3: nil, iso_name: nil, name: nil}

  #   def country_fixture(attrs \\ %{}) do
  #     {:ok, country} =
  #       attrs
  #       |> Enum.into(@valid_attrs)
  #       |> World.create_country()

  #     country
  #   end

  #   test "list_countries/0 returns all countries" do
  #     country = country_fixture()
  #     assert World.list_countries() == [country]
  #   end

  # test "get_country!/1 returns the country with given id" do
  #   country = country_fixture()
  #   assert World.get_country!(country.id) == country
  # end

  # test "create_country/1 with valid data creates a country" do
  #   assert {:ok, %Country{} = country} = World.create_country(@valid_attrs)
  #   assert country.iso == "some iso"
  #   assert country.iso3 == "some iso3"
  #   assert country.iso_name == "some iso_name"
  #   assert country.name == "some name"
  #   assert country.num_code == "some num_code"
  # end

  # test "create_country/1 with invalid data returns error changeset" do
  #   assert {:error, %Ecto.Changeset{}} = World.create_country(@invalid_attrs)
  # end

  # test "update_country/2 with valid data updates the country" do
  #   country = country_fixture()
  #   assert {:ok, %Country{} = country} = World.update_country(country, @update_attrs)
  #   assert country.iso == "some updated iso"
  #   assert country.iso3 == "some updated iso3"
  #   assert country.iso_name == "some updated iso_name"
  #   assert country.name == "some updated name"
  #   assert country.num_code == "some updated num_code"
  # end

  # test "update_country/2 with invalid data returns error changeset" do
  #   country = country_fixture()
  #   assert {:error, %Ecto.Changeset{}} = World.update_country(country, @invalid_attrs)
  #   assert country == World.get_country!(country.id)
  # end

  # test "delete_country/1 deletes the country" do
  #   country = country_fixture()
  #   assert {:ok, %Country{}} = World.delete_country(country)
  #   assert_raise Ecto.NoResultsError, fn -> World.get_country!(country.id) end
  # end

  # test "change_country/1 returns a country changeset" do
  #   country = country_fixture()
  #   assert %Ecto.Changeset{} = World.change_country(country)
  # end
  # end
end
