defmodule CommercePlatform.StockTest do
  use CommercePlatform.DataCase

  alias CommercePlatform.Stock

  describe "products" do
    alias CommercePlatform.Stock.Product

    @valid_attrs %{description: "some description", image: "some image", name: "some name", price: 120.5, size: 120.5, thumbnail: "some thumbnail", weight: 120.5}
    @update_attrs %{description: "some updated description", image: "some updated image", name: "some updated name", price: 456.7, size: 456.7, thumbnail: "some updated thumbnail", weight: 456.7}
    @invalid_attrs %{description: nil, image: nil, name: nil, price: nil, size: nil, thumbnail: nil, weight: nil}

    def product_fixture(attrs \\ %{}) do
      {:ok, product} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Stock.create_product()

      product
    end

    test "list_products/0 returns all products" do
      product = product_fixture()
      assert Stock.list_products() == [product]
    end

    test "get_product!/1 returns the product with given id" do
      product = product_fixture()
      assert Stock.get_product!(product.id) == product
    end

    test "create_product/1 with valid data creates a product" do
      assert {:ok, %Product{} = product} = Stock.create_product(@valid_attrs)
      assert product.description == "some description"
      assert product.image == "some image"
      assert product.name == "some name"
      assert product.price == 120.5
      assert product.size == 120.5
      assert product.thumbnail == "some thumbnail"
      assert product.weight == 120.5
    end

    test "create_product/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Stock.create_product(@invalid_attrs)
    end

    test "update_product/2 with valid data updates the product" do
      product = product_fixture()
      assert {:ok, %Product{} = product} = Stock.update_product(product, @update_attrs)
      assert product.description == "some updated description"
      assert product.image == "some updated image"
      assert product.name == "some updated name"
      assert product.price == 456.7
      assert product.size == 456.7
      assert product.thumbnail == "some updated thumbnail"
      assert product.weight == 456.7
    end

    test "update_product/2 with invalid data returns error changeset" do
      product = product_fixture()
      assert {:error, %Ecto.Changeset{}} = Stock.update_product(product, @invalid_attrs)
      assert product == Stock.get_product!(product.id)
    end

    test "delete_product/1 deletes the product" do
      product = product_fixture()
      assert {:ok, %Product{}} = Stock.delete_product(product)
      assert_raise Ecto.NoResultsError, fn -> Stock.get_product!(product.id) end
    end

    test "change_product/1 returns a product changeset" do
      product = product_fixture()
      assert %Ecto.Changeset{} = Stock.change_product(product)
    end
  end
end
