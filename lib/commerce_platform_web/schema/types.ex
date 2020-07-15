defmodule CommercePlatformWeb.Schema.Types do
  use Absinthe.Schema.Notation

  alias CommercePlatformWeb.Schema.Types

  import_types(Types.UserType)
end
