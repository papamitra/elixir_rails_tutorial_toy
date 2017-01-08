defmodule ToyApp.User do
  use ToyApp.Web, :model

  schema "users" do
    field :name, :string
    field :email, :string

    timestamps
  end
end
