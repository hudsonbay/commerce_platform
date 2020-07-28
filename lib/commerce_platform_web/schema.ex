defmodule CommercePlatformWeb.Schema do
  use Absinthe.Schema

  alias CommercePlatformWeb.Resolvers
  alias CommercePlatformWeb.Schema.Middleware

  import_types(CommercePlatformWeb.Schema.Types)

  query do
    # Users
    @desc "Get a list of all users"
    field :users, list_of(:user_type) do
      middleware(Middleware.Authorize, "admin")
      resolve(&Resolvers.UserResolver.users/3)
    end

    @desc "Get a single user"
    field :find_user, type: :user_type do
      arg(:id, non_null(:id))
      resolve(&Resolvers.UserResolver.find_user/2)
    end

    # Products
    @desc "Get a list of all products"
    field :products, list_of(:product_type) do
      # middleware(Middleware.Authorize, :any)
      resolve(&Resolvers.ProductResolver.products/3)
    end

    @desc "Get a list of all product categories"
    field :product_categories, list_of(:product_category_type) do
      resolve(&Resolvers.ProductCategoryResolver.product_categories/3)
    end

    # Orders
    @desc "Get a list of all orders"
    field :all_orders, list_of(:order_type) do
      middleware(Middleware.Authorize, "admin")
      resolve(&Resolvers.OrderResolver.all_orders/3)
    end
  end

  mutation do
    @desc "Register a new user"
    field :register_user, type: :user_type do
      arg(:input, non_null(:user_input_type))
      resolve(&Resolvers.UserResolver.register_user/3)
    end

    @desc "Login a user and return a JWT token"
    field :login_user, type: :session_type do
      arg(:input, non_null(:session_input_type))
      resolve(&Resolvers.SessionResolver.login_user/3)
    end

    @desc "Insert new product"
    field :insert_product, type: :product_type do
      arg(:input, non_null(:product_input_type))
      middleware(Middleware.Authorize, "admin")
      resolve(&Resolvers.ProductResolver.insert_product/3)
    end

    @desc "insert new product category"
    field :insert_product_category, type: :product_category_type do
      arg(:input, non_null(:product_category_input_type))
      middleware(Middleware.Authorize, "admin")
      resolve(&Resolvers.ProductCategoryResolver.insert_product_category/3)
    end

    @desc "insert new order"
    field :insert_order, type: :order_type do
      arg(:input, non_null(:order_input_type))
      middleware(Middleware.Authorize, :any)
      resolve(&Resolvers.OrderResolver.insert_order/3)
    end
  end

  # subscription do

  # end
end
