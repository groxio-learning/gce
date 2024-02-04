defmodule Gce.Speaker do
  defstruct ~w[name slug image]a
  def all do
    [
      spk("Frank Hunleth", "frank-hunleth", "frank-hunleth.jpg"),
      spk("Bryan Hunter", "bryan-hunter", "bryan-hunter.jpg"),
      spk("Chris Miller", "chris-miller", "chris-miller.png"),
      spk("Savannah Manning", "savannah-manning", "savannah-manning.jpeg"),
      spk("Zach Daniel", "zach-daniel", "zach-daniel.jpeg"),
      spk("Chris Keathley", "chris-keathley", "chris-keathley.jpg"),
      spk("Andrew Ek", "andrew-ek", "andrew-ek.jpeg"),
      spk("Amos King", "amos-king", "amos-king.jpg"),
      spk("Sam McDavid", "sam-mcdavid", "sam-mcdavid.png"),
      spk("Flora Peterson", "flora-peterson", nil),
      spk("Todd Resudek", "todd-resudek", "todd-resudek.jpeg"),
      spk("Anna Sherman", "anna-sherman", "anna-sherman.png"),
      spk("Lekha Surasani", "lekha-surasani", "lekha-surasani.jpeg"),
      spk("More To Be Announced", "tbd", "default.svg"),
    ]
  end

  def spk(name, slug, image) do
    __struct__(name: name, slug: slug, image: image || default_img())
  end

  defp default_img, do: "default.svg"
end
