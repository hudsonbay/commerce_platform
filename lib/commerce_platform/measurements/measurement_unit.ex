defmodule CommercePlatform.Measurements.MeasurementUnit do
  use Ecto.Schema
  import Ecto.Changeset

  schema "measurement_units" do
    field :unit_name, :string
    field :type_id, :id
  end

  @doc false
  def changeset(measurement_unit, attrs) do
    measurement_unit
    |> cast(attrs, [:unit_name])
    |> validate_required([:unit_name])
  end
end
