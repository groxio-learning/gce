defmodule GceWeb.PageHTML do
  use GceWeb, :html
  import GceWeb.PagesComponent

  embed_templates "page_html/*"
end
