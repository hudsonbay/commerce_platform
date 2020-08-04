defmodule CommercePlatform.AccountsTest do
  # use CommercePlatform.DataCase

  # alias CommercePlatform.Accounts

  # describe "users" do
  #   alias CommercePlatform.Accounts.User

  #   @valid_attrs %{
  #     email: "some email",
  #     first_name: "some first_name",
  #     last_name: "some last_name",
  #     password_hash: "some password_hash",
  #     role: "some role"
  #   }
  #   @update_attrs %{
  #     email: "some updated email",
  #     first_name: "some updated first_name",
  #     last_name: "some updated last_name",
  #     password_hash: "some updated password_hash",
  #     role: "some updated role"
  #   }
  #   @invalid_attrs %{email: nil, first_name: nil, last_name: nil, password_hash: nil, role: nil}

  #   def user_fixture(attrs \\ %{}) do
  #     {:ok, user} =
  #       attrs
  #       |> Enum.into(@valid_attrs)
  #       |> Accounts.create_user()

  #     user
  #   end

  #   test "list_users/0 returns all users" do
  #     user = user_fixture()
  #     assert Accounts.list_users() == [user]
  #   end

  #   test "get_user!/1 returns the user with given id" do
  #     user = user_fixture()
  #     assert Accounts.get_user!(user.id) == user
  #   end

  #   test "create_user/1 with valid data creates a user" do
  #     assert {:ok, %User{} = user} = Accounts.create_user(@valid_attrs)
  #     assert user.email == "some email"
  #     assert user.first_name == "some first_name"
  #     assert user.last_name == "some last_name"
  #     assert user.password_hash == "some password_hash"
  #     assert user.role == "some role"
  #   end

  #   test "create_user/1 with invalid data returns error changeset" do
  #     assert {:error, %Ecto.Changeset{}} = Accounts.create_user(@invalid_attrs)
  #   end

  #   test "update_user/2 with valid data updates the user" do
  #     user = user_fixture()
  #     assert {:ok, %User{} = user} = Accounts.update_user(user, @update_attrs)
  #     assert user.email == "some updated email"
  #     assert user.first_name == "some updated first_name"
  #     assert user.last_name == "some updated last_name"
  #     assert user.password_hash == "some updated password_hash"
  #     assert user.role == "some updated role"
  #   end

  #   test "update_user/2 with invalid data returns error changeset" do
  #     user = user_fixture()
  #     assert {:error, %Ecto.Changeset{}} = Accounts.update_user(user, @invalid_attrs)
  #     assert user == Accounts.get_user!(user.id)
  #   end

  #   test "delete_user/1 deletes the user" do
  #     user = user_fixture()
  #     assert {:ok, %User{}} = Accounts.delete_user(user)
  #     assert_raise Ecto.NoResultsError, fn -> Accounts.get_user!(user.id) end
  #   end

  #   test "change_user/1 returns a user changeset" do
  #     user = user_fixture()
  #     assert %Ecto.Changeset{} = Accounts.change_user(user)
  #   end
  # end

  # describe "membership_types" do
  #   alias CommercePlatform.Accounts.MembershipType

  #   @valid_attrs %{card_img: "some card_img", description: "some description", name: "some name"}
  #   @update_attrs %{card_img: "some updated card_img", description: "some updated description", name: "some updated name"}
  #   @invalid_attrs %{card_img: nil, description: nil, name: nil}

  #   def membership_type_fixture(attrs \\ %{}) do
  #     {:ok, membership_type} =
  #       attrs
  #       |> Enum.into(@valid_attrs)
  #       |> Accounts.create_membership_type()

  #     membership_type
  #   end

  #   test "list_membership_types/0 returns all membership_types" do
  #     membership_type = membership_type_fixture()
  #     assert Accounts.list_membership_types() == [membership_type]
  #   end

  #   test "get_membership_type!/1 returns the membership_type with given id" do
  #     membership_type = membership_type_fixture()
  #     assert Accounts.get_membership_type!(membership_type.id) == membership_type
  #   end

  #   test "create_membership_type/1 with valid data creates a membership_type" do
  #     assert {:ok, %MembershipType{} = membership_type} = Accounts.create_membership_type(@valid_attrs)
  #     assert membership_type.card_img == "some card_img"
  #     assert membership_type.description == "some description"
  #     assert membership_type.name == "some name"
  #   end

  #   test "create_membership_type/1 with invalid data returns error changeset" do
  #     assert {:error, %Ecto.Changeset{}} = Accounts.create_membership_type(@invalid_attrs)
  #   end

  #   test "update_membership_type/2 with valid data updates the membership_type" do
  #     membership_type = membership_type_fixture()
  #     assert {:ok, %MembershipType{} = membership_type} = Accounts.update_membership_type(membership_type, @update_attrs)
  #     assert membership_type.card_img == "some updated card_img"
  #     assert membership_type.description == "some updated description"
  #     assert membership_type.name == "some updated name"
  #   end

  #   test "update_membership_type/2 with invalid data returns error changeset" do
  #     membership_type = membership_type_fixture()
  #     assert {:error, %Ecto.Changeset{}} = Accounts.update_membership_type(membership_type, @invalid_attrs)
  #     assert membership_type == Accounts.get_membership_type!(membership_type.id)
  #   end

  #   test "delete_membership_type/1 deletes the membership_type" do
  #     membership_type = membership_type_fixture()
  #     assert {:ok, %MembershipType{}} = Accounts.delete_membership_type(membership_type)
  #     assert_raise Ecto.NoResultsError, fn -> Accounts.get_membership_type!(membership_type.id) end
  #   end

  #   test "change_membership_type/1 returns a membership_type changeset" do
  #     membership_type = membership_type_fixture()
  #     assert %Ecto.Changeset{} = Accounts.change_membership_type(membership_type)
  #   end
  # end

  # describe "roles" do
  #   alias CommercePlatform.Accounts.Role

  #   @valid_attrs %{name: "some name"}
  #   @update_attrs %{name: "some updated name"}
  #   @invalid_attrs %{name: nil}

  #   def role_fixture(attrs \\ %{}) do
  #     {:ok, role} =
  #       attrs
  #       |> Enum.into(@valid_attrs)
  #       |> Accounts.create_role()

  #     role
  #   end

  #   test "list_roles/0 returns all roles" do
  #     role = role_fixture()
  #     assert Accounts.list_roles() == [role]
  #   end

  #   test "get_role!/1 returns the role with given id" do
  #     role = role_fixture()
  #     assert Accounts.get_role!(role.id) == role
  #   end

  #   test "create_role/1 with valid data creates a role" do
  #     assert {:ok, %Role{} = role} = Accounts.create_role(@valid_attrs)
  #     assert role.name == "some name"
  #   end

  #   test "create_role/1 with invalid data returns error changeset" do
  #     assert {:error, %Ecto.Changeset{}} = Accounts.create_role(@invalid_attrs)
  #   end

  #   test "update_role/2 with valid data updates the role" do
  #     role = role_fixture()
  #     assert {:ok, %Role{} = role} = Accounts.update_role(role, @update_attrs)
  #     assert role.name == "some updated name"
  #   end

  #   test "update_role/2 with invalid data returns error changeset" do
  #     role = role_fixture()
  #     assert {:error, %Ecto.Changeset{}} = Accounts.update_role(role, @invalid_attrs)
  #     assert role == Accounts.get_role!(role.id)
  #   end

  #   test "delete_role/1 deletes the role" do
  #     role = role_fixture()
  #     assert {:ok, %Role{}} = Accounts.delete_role(role)
  #     assert_raise Ecto.NoResultsError, fn -> Accounts.get_role!(role.id) end
  #   end

  #   test "change_role/1 returns a role changeset" do
  #     role = role_fixture()
  #     assert %Ecto.Changeset{} = Accounts.change_role(role)
  #   end
  # end

  # describe "permissions" do
  #   alias CommercePlatform.Accounts.Permission

  #   @valid_attrs %{action: "some action", name: "some name"}
  #   @update_attrs %{action: "some updated action", name: "some updated name"}
  #   @invalid_attrs %{action: nil, name: nil}

  #   def permission_fixture(attrs \\ %{}) do
  #     {:ok, permission} =
  #       attrs
  #       |> Enum.into(@valid_attrs)
  #       |> Accounts.create_permission()

  #     permission
  #   end

  #   test "list_permissions/0 returns all permissions" do
  #     permission = permission_fixture()
  #     assert Accounts.list_permissions() == [permission]
  #   end

  #   test "get_permission!/1 returns the permission with given id" do
  #     permission = permission_fixture()
  #     assert Accounts.get_permission!(permission.id) == permission
  #   end

  #   test "create_permission/1 with valid data creates a permission" do
  #     assert {:ok, %Permission{} = permission} = Accounts.create_permission(@valid_attrs)
  #     assert permission.action == "some action"
  #     assert permission.name == "some name"
  #   end

  #   test "create_permission/1 with invalid data returns error changeset" do
  #     assert {:error, %Ecto.Changeset{}} = Accounts.create_permission(@invalid_attrs)
  #   end

  #   test "update_permission/2 with valid data updates the permission" do
  #     permission = permission_fixture()
  #     assert {:ok, %Permission{} = permission} = Accounts.update_permission(permission, @update_attrs)
  #     assert permission.action == "some updated action"
  #     assert permission.name == "some updated name"
  #   end

  #   test "update_permission/2 with invalid data returns error changeset" do
  #     permission = permission_fixture()
  #     assert {:error, %Ecto.Changeset{}} = Accounts.update_permission(permission, @invalid_attrs)
  #     assert permission == Accounts.get_permission!(permission.id)
  #   end

  #   test "delete_permission/1 deletes the permission" do
  #     permission = permission_fixture()
  #     assert {:ok, %Permission{}} = Accounts.delete_permission(permission)
  #     assert_raise Ecto.NoResultsError, fn -> Accounts.get_permission!(permission.id) end
  #   end

  #   test "change_permission/1 returns a permission changeset" do
  #     permission = permission_fixture()
  #     assert %Ecto.Changeset{} = Accounts.change_permission(permission)
  #   end
  # end
end
