defmodule CommercePlatformWeb.Schema.Types.MembershipType do
  use Absinthe.Schema.Notation

  object :membership_type do
    field(:id, :id)
    field(:name, :string)
    field(:description, :string)
    field(:card_img, :string)
  end
end
