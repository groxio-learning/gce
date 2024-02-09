defmodule Gce.Speaker do
  use GceWeb, :html
  defstruct ~w[name slug image description]a

  def all do
    [
      spk(
        "Frank Hunleth",
        "frank-hunleth",
        "frank-hunleth.jpg",
        "Frank Hunleth is an embedded systems programmer, OSS maintainer, and Nerves core team member. At his day job, he uses Elixir and Nerves at SmartRent, a company that provides smart home automation for rental properties. When not in front of a computer, he loves running and spending time with his family.
      "
      ),
      spk(
        "Bryan Hunter",
        "bryan-hunter",
        "bryan-hunter.jpg",
        "Bryan Hunter is an Enterprise Fellow at HCA Healthcare. He has three decades of custom software development and consulting experience in complex business domains. In 2012 he founded Nashville Functional Programmers (@NashFP). Bryan enjoys supporting FP communities around the world and has shared his experience in Lean and functional programming at conferences and universities in Oslo, London, Manila, Bangalore, Brisbane, and throughout the United States.
      "
      ),
      spk("Chris Miller", "chris-miller", "chris-miller.png", nil),
      spk("Savannah Manning", "savannah-manning", "savannah-manning.jpeg", nil),
      spk(
        "Zach Daniel",
        "zach-daniel",
        "zach-daniel.jpeg",
        "Zach is a software engineer with extensive experience building applications in production with Elixir. He is the author of the Ash Framework, a resource-oriented declarative design framework for Elixir, and principal platform engineer at Alembic. He has a passion for declarative design, functional programming, and contributing to the open source community. When not programming, he enjoys spending time with his friends and family, taking trips in his RV and studying the Japanese language.
      "
      ),
      spk(
        "Chris Keathley",
        "chris-keathley",
        "chris-keathley.jpg",
        "Chris is a principal software engineer using Elixir and Rust to create renewable energy. When not writing code for work, Chris can be found writing code for fun, talking about the joys of functional programming, playing dungeons and dragons, roasting coffee, or building lego with his kids.

      "
      ),
      spk(
        "Andrew Ek",
        "andrew-ek",
        "andrew-ek.jpeg",
        "Andrew Ek is a principal engineer with Launch Scout, where he builds software for clients using Elixir, Ruby, and Javascript, and where he trains software development apprentices. He lives in Lincoln, Nebraska, with his spouse, their daughter, and two orange cats. You can find his thoughts about programming and tennis on twitter at @ektastrophe.
      "
      ),
      spk(
        "Amos King",
        "amos-king",
        "amos-king.jpg",
        "Amos is the Founder of Binary Noggin and the host of Elixir Outlaws. He loves solving problems and learning with others. When not coding, Amos fly fishes and hikes with his family.
      "
      ),
      spk("Sam McDavid", "sam-mcdavid", "sam-mcdavid.png", nil),
      spk("Flora Shepherd Petterson", "flora-peterson", "flora.jpeg", ""),
      spk("Todd Resudek", "todd-resudek", "todd-resudek.jpeg", nil),
      spk("Anna Sherman", "anna-sherman", "anna-sherman.png", nil),
      spk("Lekha Surasani", "lekha-surasani", "lekha-surasani.jpeg", nil),
      spk("More to be announced", "tbd", "default.svg", "tbd")
    ]
  end

  def spk(name, slug, image, description) do
    __struct__(
      name: name,
      slug: slug,
      image: image || default_img(),
      description: description || default_desc()
    )
  end

  defp default_img, do: "default.svg"
  defp default_desc, do: ""
end
