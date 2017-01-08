defmodule ToyApp.Micropost do
  use ToyApp.Web, :model

  schema "microposts" do
    field :content, :string

    belongs_to :user, ToyApp.User

    timestamps
  end
end
