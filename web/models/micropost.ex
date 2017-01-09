defmodule ToyApp.Micropost do
  use ToyApp.Web, :model

  schema "microposts" do
    field :content, :string
    belongs_to :user, ToyApp.User

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:content])
    |> validate_required([:content])
    |> validate_length(:content, max: 140)
  end
end
