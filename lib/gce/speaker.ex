defmodule Gce.Speaker do
  use GceWeb, :html
  defstruct ~w[name slug image description talk]a

  def all do
    [
      spk(
        "Frank Hunleth",
        "frank-hunleth",
        "frank-hunleth.jpg",
        "Frank Hunleth is an embedded systems programmer, OSS maintainer, and Nerves core team member. At his day job, he uses Elixir and Nerves at SmartRent, a company that provides smart home automation for rental properties. When not in front of a computer, he loves running and spending time with his family.
      ",
        nil
      ),
      spk(
        "Bryan Hunter",
        "bryan-hunter",
        "bryan-hunter.jpg",
        "Bryan Hunter is an Enterprise Fellow at HCA Healthcare. He has three decades of custom software development and consulting experience in complex business domains. In 2012 he founded Nashville Functional Programmers (@NashFP). Bryan enjoys supporting FP communities around the world and has shared his experience in Lean and functional programming at conferences and universities in Oslo, London, Manila, Bangalore, Brisbane, and throughout the United States.
      ",
        nil
      ),
      spk(
        "Randall Thomas",
        "randall-thomas",
        "randall-thomas.jpg",
        "Randall Thomas (@daksis) is a classically trained musician that took one too many calculus classes and got sucked into geekery: computers, robots, video games, high energy physics - the usual suspects.
      Afflicted with rabid technology ADD, Randall has built companies in various industries with numerous startups -- everything from robotics to digital video to cloud computing. Randall founded Thunderbolt Labs - a software consultancy that teaches companies how to build better software by embedding with their teams and building it beside them.",
        nil
      ),
      spk("Savannah Manning", "savannah-manning", "savannah-manning.jpeg", nil, nil),
      spk("Chris Miller", "chris-miller", "chris-miller.png", nil, nil),
      spk(
        "Zach Daniel",
        "zach-daniel",
        "zach-daniel.jpeg",
        "Zach is a software engineer with extensive experience building applications in production with Elixir. He is the author of the Ash Framework, a resource-oriented declarative design framework for Elixir, and principal platform engineer at Alembic. He has a passion for declarative design, functional programming, and contributing to the open source community. When not programming, he enjoys spending time with his friends and family, taking trips in his RV and studying the Japanese language.
      ",
        nil
      ),
      spk(
        "Chris Keathley",
        "chris-keathley",
        "chris-keathley.jpg",
        "Chris is a principal software engineer using Elixir and Rust to create renewable energy. When not writing code for work, Chris can be found writing code for fun, talking about the joys of functional programming, playing dungeons and dragons, roasting coffee, or building lego with his kids.",
        nil
      ),
      spk(
        "Andrew Ek",
        "andrew-ek",
        "andrew-ek.jpeg",
        "Andrew Ek is a principal engineer with Launch Scout, where he builds software for clients using Elixir, Ruby, and Javascript, and where he trains software development apprentices. He lives in Lincoln, Nebraska, with his spouse, their daughter, and two orange cats. You can find his thoughts about programming and tennis on twitter at @ektastrophe.
      ",
        nil
      ),
      spk(
        "Amos King",
        "amos-king",
        "amos-king.jpg",
        "Amos is the Founder of Binary Noggin and the host of Elixir Outlaws. He loves solving problems and learning with others. When not coding, Amos fly fishes and hikes with his family.
      ",
        nil
      ),
      spk(
        "Sam McDavid",
        "sam-mcdavid",
        "sam-mcdavid.jpg",
        "Sam is the Principal Software Engineer of the generative AI team at dscout. He has a BS in Computer Science and an MBA from the University of Tennessee at Chattanooga and an MS in Computer Science and Machine Learning from Georgia Tech. Leading up to these experiences, Sam worked with time series data for CO2 and Methane emissions measurement after working with many various computer vision, data collection, and hardware adjacent clients at Very. He currently resides in Chattanooga with his wife, Ashley.
      ",
        "ML for Trading Stocks"
      ),
      spk("Flora Shepherd Petterson", "flora-peterson", "flora.jpeg", "", nil),
      spk(
        "Todd Resudek",
        "todd-resudek",
        "todd-resudek.jpeg",
        "Todd is a dedicated father of four living in Colorado. Outside of family life, Todd is a Principal Engineer at Jackpocket, a maintainer of HEx, and the organizer of NervesConf US.
      ",
        nil
      ),
      spk("Anna Sherman", "anna-sherman", "anna-sherman.png", nil, nil),
      spk(
        "Lekha Surasani",
        "lekha-surasani",
        "lekha-surasani.jpeg",
        "Lekha is currently working as a Senior Software Engineer at Adpipe. She’s worked with a variety of technologies, including Ruby/Rails, React, Elixir and Phoenix/Live View, and primarily works at startups. In her free time, she likes to read, travel, and go on long walks in her city.
      ",
        nil
      ),
      spk("Stuart Page", "stuart-page", "stuart-page.jpg", nil, nil),
      spk("Chris Nelson", "chris-nelson", "chris-nelson.jpg", nil, nil),
      spk("More to be announced", "tbd", "default.svg", "tbd", nil)
    ]
  end

  def spk(name, slug, image, description, talk) do
    __struct__(
      name: name,
      slug: slug,
      image: image || default_img(),
      description: description || default_desc(),
      talk: talk
    )
  end

  defp default_img, do: "default.svg"
  defp default_desc, do: ""
end
