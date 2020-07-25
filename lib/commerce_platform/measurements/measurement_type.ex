defmodule CommercePlatform.Measurements.MeasurementType do
  use Ecto.Schema
  import Ecto.Changeset

  schema "measurement_types" do
    field :type, :string
  end

  @doc false
  def changeset(measurement_type, attrs) do
    measurement_type
    |> cast(attrs, [:type])
    |> validate_required([:type])
  end
end
