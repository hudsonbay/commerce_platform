alias CommercePlatform.Repo

defmodule CommercePlatform.World.Seeds do
  def seed!() do
    Enum.each(Worldly.Country.all(), fn ag -> load_country_data(ag) end)
  end

  def load_country_data(country) do
    change =
      CommercePlatform.World.Country.changeset(
        %CommercePlatform.World.Country{},
        to_param(country)
      )

    inserted_country = Repo.insert!(change)
  end

  defp to_param(%Worldly.Country{
         name: name,
         alpha_2_code: iso,
         alpha_3_code: iso3,
         numeric_code: numcode,
         has_regions: has_states
       }) do
    %{
      name: name,
      iso: iso,
      iso3: iso3,
      numcode: numcode,
      has_states: has_states,
      iso_name: String.upcase(name)
    }
  end
end
