defmodule GceWeb.PageController do
  use GceWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def about(conn, _params) do
    render(conn, :about)
  end

  def schedule(conn, _params) do
    render(conn, :schedule)
  end

  def coc(conn, _params) do
    render(conn, :coc)
  end

  def contact(conn, _params) do
    render(conn, :contact)
  end

  def training(conn, _params) do
    render(conn, :training)
  end

  def speakers(conn, %{"slug" => slug}) do
    speaker = Enum.find(Gce.Speaker.all(), fn spk -> spk.slug == slug end)
    render(conn, "speakers.html", speaker: speaker)
  end
end
