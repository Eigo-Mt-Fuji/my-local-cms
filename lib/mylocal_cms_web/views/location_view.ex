defmodule MylocalCmsWeb.LocationView do
  use MylocalCmsWeb, :view
  alias MylocalCmsWeb.LocationView

  def render("index.json", %{locations: locations}) do
    %{data: render_many(locations, LocationView, "location.json")}
  end

  def render("show.json", %{location: location}) do
    %{data: render_one(location, LocationView, "location.json")}
  end

  def render("location.json", %{location: location}) do
    %{id: location.id,
      title: location.title,
      description: location.description,
      lat: location.lat,
      lon: location.lon}
  end
end
