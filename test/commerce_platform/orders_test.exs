defmodule CommercePlatform.OrdersTest do
  use CommercePlatform.DataCase

  alias CommercePlatform.Orders

  describe "orders" do
    alias CommercePlatform.Orders.Order

    @valid_attrs %{date_issued: "2010-04-17T14:00:00Z", number: "some number", paid: true, required_date: "2010-04-17T14:00:00Z"}
    @update_attrs %{date_issued: "2011-05-18T15:01:01Z", number: "some updated number", paid: false, required_date: "2011-05-18T15:01:01Z"}
    @invalid_attrs %{date_issued: nil, number: nil, paid: nil, required_date: nil}

    def order_fixture(attrs \\ %{}) do
      {:ok, order} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Orders.create_order()

      order
    end

    test "list_orders/0 returns all orders" do
      order = order_fixture()
      assert Orders.list_orders() == [order]
    end

    test "get_order!/1 returns the order with given id" do
      order = order_fixture()
      assert Orders.get_order!(order.id) == order
    end

    test "create_order/1 with valid data creates a order" do
      assert {:ok, %Order{} = order} = Orders.create_order(@valid_attrs)
      assert order.date_issued == DateTime.from_naive!(~N[2010-04-17T14:00:00Z], "Etc/UTC")
      assert order.number == "some number"
      assert order.paid == true
      assert order.required_date == DateTime.from_naive!(~N[2010-04-17T14:00:00Z], "Etc/UTC")
    end

    test "create_order/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Orders.create_order(@invalid_attrs)
    end

    test "update_order/2 with valid data updates the order" do
      order = order_fixture()
      assert {:ok, %Order{} = order} = Orders.update_order(order, @update_attrs)
      assert order.date_issued == DateTime.from_naive!(~N[2011-05-18T15:01:01Z], "Etc/UTC")
      assert order.number == "some updated number"
      assert order.paid == false
      assert order.required_date == DateTime.from_naive!(~N[2011-05-18T15:01:01Z], "Etc/UTC")
    end

    test "update_order/2 with invalid data returns error changeset" do
      order = order_fixture()
      assert {:error, %Ecto.Changeset{}} = Orders.update_order(order, @invalid_attrs)
      assert order == Orders.get_order!(order.id)
    end

    test "delete_order/1 deletes the order" do
      order = order_fixture()
      assert {:ok, %Order{}} = Orders.delete_order(order)
      assert_raise Ecto.NoResultsError, fn -> Orders.get_order!(order.id) end
    end

    test "change_order/1 returns a order changeset" do
      order = order_fixture()
      assert %Ecto.Changeset{} = Orders.change_order(order)
    end
  end

  describe "shippers" do
    alias CommercePlatform.Orders.Shipper

    @valid_attrs %{company_name: "some company_name", description: "some description", email: "some email", phone: "some phone", picture: "some picture", website: "some website"}
    @update_attrs %{company_name: "some updated company_name", description: "some updated description", email: "some updated email", phone: "some updated phone", picture: "some updated picture", website: "some updated website"}
    @invalid_attrs %{company_name: nil, description: nil, email: nil, phone: nil, picture: nil, website: nil}

    def shipper_fixture(attrs \\ %{}) do
      {:ok, shipper} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Orders.create_shipper()

      shipper
    end

    test "list_shippers/0 returns all shippers" do
      shipper = shipper_fixture()
      assert Orders.list_shippers() == [shipper]
    end

    test "get_shipper!/1 returns the shipper with given id" do
      shipper = shipper_fixture()
      assert Orders.get_shipper!(shipper.id) == shipper
    end

    test "create_shipper/1 with valid data creates a shipper" do
      assert {:ok, %Shipper{} = shipper} = Orders.create_shipper(@valid_attrs)
      assert shipper.company_name == "some company_name"
      assert shipper.description == "some description"
      assert shipper.email == "some email"
      assert shipper.phone == "some phone"
      assert shipper.picture == "some picture"
      assert shipper.website == "some website"
    end

    test "create_shipper/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Orders.create_shipper(@invalid_attrs)
    end

    test "update_shipper/2 with valid data updates the shipper" do
      shipper = shipper_fixture()
      assert {:ok, %Shipper{} = shipper} = Orders.update_shipper(shipper, @update_attrs)
      assert shipper.company_name == "some updated company_name"
      assert shipper.description == "some updated description"
      assert shipper.email == "some updated email"
      assert shipper.phone == "some updated phone"
      assert shipper.picture == "some updated picture"
      assert shipper.website == "some updated website"
    end

    test "update_shipper/2 with invalid data returns error changeset" do
      shipper = shipper_fixture()
      assert {:error, %Ecto.Changeset{}} = Orders.update_shipper(shipper, @invalid_attrs)
      assert shipper == Orders.get_shipper!(shipper.id)
    end

    test "delete_shipper/1 deletes the shipper" do
      shipper = shipper_fixture()
      assert {:ok, %Shipper{}} = Orders.delete_shipper(shipper)
      assert_raise Ecto.NoResultsError, fn -> Orders.get_shipper!(shipper.id) end
    end

    test "change_shipper/1 returns a shipper changeset" do
      shipper = shipper_fixture()
      assert %Ecto.Changeset{} = Orders.change_shipper(shipper)
    end
  end

  describe "order_details" do
    alias CommercePlatform.Orders.OrderDetail

    @valid_attrs %{discount: 120.5, price: 120.5, quantity: 42}
    @update_attrs %{discount: 456.7, price: 456.7, quantity: 43}
    @invalid_attrs %{discount: nil, price: nil, quantity: nil}

    def order_detail_fixture(attrs \\ %{}) do
      {:ok, order_detail} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Orders.create_order_detail()

      order_detail
    end

    test "list_order_details/0 returns all order_details" do
      order_detail = order_detail_fixture()
      assert Orders.list_order_details() == [order_detail]
    end

    test "get_order_detail!/1 returns the order_detail with given id" do
      order_detail = order_detail_fixture()
      assert Orders.get_order_detail!(order_detail.id) == order_detail
    end

    test "create_order_detail/1 with valid data creates a order_detail" do
      assert {:ok, %OrderDetail{} = order_detail} = Orders.create_order_detail(@valid_attrs)
      assert order_detail.discount == 120.5
      assert order_detail.price == 120.5
      assert order_detail.quantity == 42
    end

    test "create_order_detail/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Orders.create_order_detail(@invalid_attrs)
    end

    test "update_order_detail/2 with valid data updates the order_detail" do
      order_detail = order_detail_fixture()
      assert {:ok, %OrderDetail{} = order_detail} = Orders.update_order_detail(order_detail, @update_attrs)
      assert order_detail.discount == 456.7
      assert order_detail.price == 456.7
      assert order_detail.quantity == 43
    end

    test "update_order_detail/2 with invalid data returns error changeset" do
      order_detail = order_detail_fixture()
      assert {:error, %Ecto.Changeset{}} = Orders.update_order_detail(order_detail, @invalid_attrs)
      assert order_detail == Orders.get_order_detail!(order_detail.id)
    end

    test "delete_order_detail/1 deletes the order_detail" do
      order_detail = order_detail_fixture()
      assert {:ok, %OrderDetail{}} = Orders.delete_order_detail(order_detail)
      assert_raise Ecto.NoResultsError, fn -> Orders.get_order_detail!(order_detail.id) end
    end

    test "change_order_detail/1 returns a order_detail changeset" do
      order_detail = order_detail_fixture()
      assert %Ecto.Changeset{} = Orders.change_order_detail(order_detail)
    end
  end
end
