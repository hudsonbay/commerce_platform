defmodule CommercePlatform.Repo do
  use Ecto.Repo,
    otp_app: :commerce_platform,
    adapter: Ecto.Adapters.Postgres
end
