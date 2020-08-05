defmodule CommercePlatformWeb.Schema do
  use Absinthe.Schema

  alias CommercePlatformWeb.Resolvers
  alias CommercePlatformWeb.Schema.Middleware

  import_types(CommercePlatformWeb.Schema.Types)

  query do
    # Users queries
    @desc "Get a list of all users"
    field :users, list_of(:user_type) do
      middleware(Middleware.Authorize, "admin")
      resolve(&Resolvers.UserResolver.users/3)
    end

    @desc "Get a user by id"
    field :get_user_by_id, type: :user_type do
      arg(:id, non_null(:id))
      resolve(&Resolvers.UserResolver.get_user_by_id/2)
    end

    # Countries queries
    @desc "Get a list of all countries"
    field :all_countries, list_of(:country_type) do
      resolve(&Resolvers.CountryResolver.countries/3)
    end

    # Products queries
    @desc "Get a list of all products"
    field :all_products, list_of(:product_type) do
      middleware(Middleware.Authorize, "admin")
      resolve(&Resolvers.ProductResolver.all_products/3)
    end

    @desc "Get a list of all available products (in stock)"
    field :available_products, list_of(:product_type) do
      arg(:matching, :string)
      resolve(&Resolvers.ProductResolver.available_products/3)
    end

    @desc "Get a list of all out of stock products"
    field :out_of_stock_products, list_of(:product_type) do
      middleware(Middleware.Authorize, "admin")
      resolve(&Resolvers.ProductResolver.out_of_stock_products/3)
    end

    @desc "Get a list of the products that are about to run out"
    field :running_out_products, list_of(:product_type) do
      middleware(Middleware.Authorize, "admin")
      resolve(&Resolvers.ProductResolver.running_out_products/3)
    end

    @desc "Get a product by id"
    field :get_product_by_id, type: :product_type do
      arg(:id, non_null(:id))
      resolve(&Resolvers.ProductResolver.get_product_by_id/2)
    end

    @desc "Get a list of all product categories"
    field :product_categories, list_of(:product_category_type) do
      resolve(&Resolvers.ProductCategoryResolver.product_categories/3)
    end

    # Orders queries
    @desc "Get a list of all orders"
    field :all_orders, list_of(:order_type) do
      middleware(Middleware.Authorize, "admin")
      resolve(&Resolvers.OrderResolver.all_orders/3)
    end
  end

  mutation do
    # Users mutations
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

    # Products mutations
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

    # Orders mutations
    @desc "insert new order"
    field :insert_order, type: :order_type do
      arg(:input, non_null(:order_input_type))
      # middleware(Middleware.Authorize, :any)
      resolve(&Resolvers.OrderResolver.insert_order/3)
    end
  end

  # subscription do

  # end
end
