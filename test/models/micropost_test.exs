defmodule ToyApp.MicropostTest do
  use ToyApp.ModelCase

  alias ToyApp.Micropost

  @valid_attrs %{content: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Micropost.changeset(%Micropost{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Micropost.changeset(%Micropost{}, @invalid_attrs)
    refute changeset.valid?
  end
end
