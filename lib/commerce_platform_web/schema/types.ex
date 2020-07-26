defmodule CommercePlatformWeb.Schema.Types do
  use Absinthe.Schema.Notation

  alias CommercePlatformWeb.Schema.Types

  import_types(Types.UserType)
  import_types(Types.SessionType)
  import_types(Types.ProductType)
  import_types(Types.ProductCategoryType)
end
