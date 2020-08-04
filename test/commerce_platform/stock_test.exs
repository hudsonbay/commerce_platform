defmodule CommercePlatform.StockTest do
  use CommercePlatform.DataCase

  alias CommercePlatform.Stock

  # describe "products" do
  #   alias CommercePlatform.Stock.Product

  #   @valid_attrs %{
  #     description: "some description",
  #     image: "some image",
  #     name: "some name",
  #     price: 120.5,
  #     size: 120.5,
  #     thumbnail: "some thumbnail",
  #     weight: 120.5,
  #     stock: 10
  #   }
  #   @update_attrs %{
  #     description: "some updated description",
  #     image: "some updated image",
  #     name: "some updated name",
  #     price: 456.7,
  #     size: 456.7,
  #     thumbnail: "some updated thumbnail",
  #     weight: 456.7,
  #     stock: 12
  #   }
  #   @invalid_attrs %{
  #     description: nil,
  #     image: nil,
  #     name: nil,
  #     price: nil,
  #     size: nil,
  #     thumbnail: nil,
  #     weight: nil,
  #     stock: nil
  #   }

  #   def product_fixture(attrs \\ %{}) do
  #     {:ok, product} =
  #       attrs
  #       |> Enum.into(@valid_attrs)
  #       |> Stock.create_product()

  #     product
  #   end

  #   test "list_products/0 returns all products" do
  #     product = product_fixture()
  #     assert Stock.list_products() == [product]
  #   end

  #   # test "get_product!/1 returns the product with given id" do
  #   #   product = product_fixture()
  #   #   assert Stock.get_product!(product.id) == product
  #   # end

  #   # test "create_product/1 with valid data creates a product" do
  #   #   assert {:ok, %Product{} = product} = Stock.create_product(@valid_attrs)
  #   #   assert product.description == "some description"
  #   #   assert product.image == "some image"
  #   #   assert product.name == "some name"
  #   #   assert product.price == 120.5
  #   #   assert product.size == 120.5
  #   #   assert product.thumbnail == "some thumbnail"
  #   #   assert product.weight == 120.5
  #   # end

  #   # test "create_product/1 with invalid data returns error changeset" do
  #   #   assert {:error, %Ecto.Changeset{}} = Stock.create_product(@invalid_attrs)
  #   # end

  #   # test "update_product/2 with valid data updates the product" do
  #   #   product = product_fixture()
  #   #   assert {:ok, %Product{} = product} = Stock.update_product(product, @update_attrs)
  #   #   assert product.description == "some updated description"
  #   #   assert product.image == "some updated image"
  #   #   assert product.name == "some updated name"
  #   #   assert product.price == 456.7
  #   #   assert product.size == 456.7
  #   #   assert product.thumbnail == "some updated thumbnail"
  #   #   assert product.weight == 456.7
  #   # end

  #   # test "update_product/2 with invalid data returns error changeset" do
  #   #   product = product_fixture()
  #   #   assert {:error, %Ecto.Changeset{}} = Stock.update_product(product, @invalid_attrs)
  #   #   assert product == Stock.get_product!(product.id)
  #   # end

  #   # test "delete_product/1 deletes the product" do
  #   #   product = product_fixture()
  #   #   assert {:ok, %Product{}} = Stock.delete_product(product)
  #   #   assert_raise Ecto.NoResultsError, fn -> Stock.get_product!(product.id) end
  #   # end

  #   # test "change_product/1 returns a product changeset" do
  #   #   product = product_fixture()
  #   #   assert %Ecto.Changeset{} = Stock.change_product(product)
  #   # end
  # end

  describe "product_categories" do
    alias CommercePlatform.Stock.ProductCategory

    @valid_attrs %{description: "some description", name: "some name"}
    @update_attrs %{description: "some updated description", name: "some updated name"}
    @invalid_attrs %{description: nil, name: nil}

    def product_category_fixture(attrs \\ %{}) do
      {:ok, product_category} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Stock.create_product_category()

      product_category
    end

    test "list_product_categories/0 returns all product_categories" do
      product_category = product_category_fixture()
      assert Stock.list_product_categories() == [product_category]
    end

    test "get_product_category!/1 returns the product_category with given id" do
      product_category = product_category_fixture()
      assert Stock.get_product_category!(product_category.id) == product_category
    end

    test "create_product_category/1 with valid data creates a product_category" do
      assert {:ok, %ProductCategory{} = product_category} =
               Stock.create_product_category(@valid_attrs)

      assert product_category.description == "some description"
      assert product_category.name == "some name"
    end

    test "create_product_category/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Stock.create_product_category(@invalid_attrs)
    end

    test "update_product_category/2 with valid data updates the product_category" do
      product_category = product_category_fixture()

      assert {:ok, %ProductCategory{} = product_category} =
               Stock.update_product_category(product_category, @update_attrs)

      assert product_category.description == "some updated description"
      assert product_category.name == "some updated name"
    end

    test "update_product_category/2 with invalid data returns error changeset" do
      product_category = product_category_fixture()

      assert {:error, %Ecto.Changeset{}} =
               Stock.update_product_category(product_category, @invalid_attrs)

      assert product_category == Stock.get_product_category!(product_category.id)
    end

    test "delete_product_category/1 deletes the product_category" do
      product_category = product_category_fixture()
      assert {:ok, %ProductCategory{}} = Stock.delete_product_category(product_category)
      assert_raise Ecto.NoResultsError, fn -> Stock.get_product_category!(product_category.id) end
    end

    test "change_product_category/1 returns a product_category changeset" do
      product_category = product_category_fixture()
      assert %Ecto.Changeset{} = Stock.change_product_category(product_category)
    end
  end

  # describe "product_subcategories" do
  #   alias CommercePlatform.Stock.ProductSubcategory

  #   @valid_attrs %{description: "some description", name: "some name", product_category_id: 1}
  #   @update_attrs %{
  #     description: "some updated description",
  #     name: "some updated name",
  #     product_category_id: 2
  #   }
  #   @invalid_attrs %{description: nil, name: nil, product_category_id: nil}

  #   def product_subcategory_fixture(attrs \\ %{}) do
  #     {:ok, product_subcategory} =
  #       attrs
  #       |> Enum.into(@valid_attrs)
  #       |> Stock.create_product_subcategory()

  #     product_subcategory
  #   end

  # test "list_product_subcategories/0 returns all product_subcategories" do
  #   product_subcategory = product_subcategory_fixture()
  #   assert Stock.list_product_subcategories() == [product_subcategory]
  # end

  #   test "get_product_subcategory!/1 returns the product_subcategory with given id" do
  #     product_subcategory = product_subcategory_fixture()
  #     assert Stock.get_product_subcategory!(product_subcategory.id) == product_subcategory
  #   end

  #   test "create_product_subcategory/1 with valid data creates a product_subcategory" do
  #     assert {:ok, %ProductSubcategory{} = product_subcategory} =
  #              Stock.create_product_subcategory(@valid_attrs)

  #     assert product_subcategory.description == "some description"
  #     assert product_subcategory.name == "some name"
  #   end

  #   test "create_product_subcategory/1 with invalid data returns error changeset" do
  #     assert {:error, %Ecto.Changeset{}} = Stock.create_product_subcategory(@invalid_attrs)
  #   end

  #   test "update_product_subcategory/2 with valid data updates the product_subcategory" do
  #     product_subcategory = product_subcategory_fixture()

  #     assert {:ok, %ProductSubcategory{} = product_subcategory} =
  #              Stock.update_product_subcategory(product_subcategory, @update_attrs)

  #     assert product_subcategory.description == "some updated description"
  #     assert product_subcategory.name == "some updated name"
  #   end

  #   test "update_product_subcategory/2 with invalid data returns error changeset" do
  #     product_subcategory = product_subcategory_fixture()

  #     assert {:error, %Ecto.Changeset{}} =
  #              Stock.update_product_subcategory(product_subcategory, @invalid_attrs)

  #     assert product_subcategory == Stock.get_product_subcategory!(product_subcategory.id)
  #   end

  #   test "delete_product_subcategory/1 deletes the product_subcategory" do
  #     product_subcategory = product_subcategory_fixture()
  #     assert {:ok, %ProductSubcategory{}} = Stock.delete_product_subcategory(product_subcategory)

  #     assert_raise Ecto.NoResultsError, fn ->
  #       Stock.get_product_subcategory!(product_subcategory.id)
  #     end
  #   end

  #   test "change_product_subcategory/1 returns a product_subcategory changeset" do
  #     product_subcategory = product_subcategory_fixture()
  #     assert %Ecto.Changeset{} = Stock.change_product_subcategory(product_subcategory)
  #   end
  # end
end
