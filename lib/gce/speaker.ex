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
        "Nerves Project Update"
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
      spk(
        "Savannah Manning",
        "savannah-manning",
        "savannah-manning.jpeg",
        "Savannah Manning, a spirited Software Engineer since 2020, thrives in the Elixir development community. Before transitioning to software engineering, she founded an international climbing company focused on outdoor skill-building. Last year, she shared her experiences at both the EU and US Elixir conferences, shedding light on her journey into the Elixir space. With a blend of technical expertise and adventurous spirit, she continues to push boundaries, both in code and on the rock face.
      ",
        "AI: Less Scary Than Your Last Date's Mood Swings - Emotion Detection Made Easy with Bumblebee"
      ),
      spk(
        "Chris Miller",
        "chris-miller",
        "chris-miller.png",
        "Chris has a bachelor’s degree in Mathematics and a deep passion for languages, encompassing both spoken and programming languages. Chris’s programming journey began with Haskell, which fostered a love for elegant, functional code. At Corvus Insurance, Chris contributes to building a world-class underwriting platform using Elm and Elixir, skillfully combining expertise to develop innovative, AI-driven applications. Outside of work, Chris shares his coding journey and insights through the YouTube channel, CodeNextDoor. Blending a strong mathematical background with a linguistic curiosity, Chris continually explores new frontiers in AI and software development.",
        "How to Move Fast and Build Things: Spawnfest 2023 Recap"
      ),
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
        "An Opinionated Approach for Onboarding New-to-Elixir Developers"
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
      spk(
        "Flora Shepherd Petterson",
        "flora-peterson",
        "flora.jpeg",
        "Flora is a Data Integration Engineer on the Waterpark team at HCA Healthcare. After many years working in communications and marketing, she is happy to write Elixir every day in her new career. A self-taught developer, Flora learned Elixir to build hobby projects with Nerves.  She is forever grateful to Groxio’s Elixir Chatt, the mentoring group that helped begin her programming journey. Flora lives in her hometown of New Orleans with her husband, three kids, and one loud cat.",
        "The Programming Languages Tour, Elixir’s Version"
      ),
      spk(
        "Todd Resudek",
        "todd-resudek",
        "todd-resudek.jpeg",
        "Todd is a dedicated father of four living in Colorado. Outside of family life, Todd is a Principal Engineer at Jackpocket, a maintainer of HEx, and the organizer of NervesConf US.
      ",
        nil
      ),
      spk(
        "Anna Sherman",
        "anna-sherman",
        "anna-sherman.png",
        "Anna Sherman is a Senior Software Engineer and Team Lead at Zillion, driving innovation in the insurtech industry.
      Outside of work, she finds joy in painting, biking, and yoga, drawing inspiration from Bob Ross's techniques and the tranquility of nature. Anna's commitment to holistic well-being extends to her family, whom she cherishes above all. With her diverse interests and dedication to excellence, Anna brings a fresh perspective to the tech conference stage, inspiring others to embrace innovation, mindfulness, and balance in their lives.
      ",
        "The Joy of Functional Coding: Exploring Functional Programming through the Lens of Bob Ross"
      ),
      spk(
        "Lekha Surasani",
        "lekha-surasani",
        "lekha-surasani.jpeg",
        "Lekha is currently working as a Senior Software Engineer at Adpipe. She’s worked with a variety of technologies, including Ruby/Rails, React, Elixir and Phoenix/Live View, and primarily works at startups. In her free time, she likes to read, travel, and go on long walks in her city.
      ",
        nil
      ),
      spk(
        "Stuart Page",
        "stuart-page",
        "stuart-page.jpg",
        "Stuart Page is software engineer at Revelry, a New Orleans-based company that helps businesses succeed and scale with transformative, solution-oriented custom software. He’s been a part of the Revelry team since April 2021.
      Stuart graduated from the Tech Talent South bootcamp in 2021 (where he learned Java and C#) and Revelry's apprenticeship program (where he learned everything else - HTML, CSS, TypeScript, Elixir). He lives with his wife and cat, and spends his time making and breaking code, as well as playing the ukulele and video games.",
        "Stupid, Awesome AI! Product Development When the Tech Is Changing Daily"
      ),
      spk(
        "Chris Nelson",
        "chris-nelson",
        "chris-nelson.jpg",
        "Chris Nelson is a Co-Founder and Principal Engineer at Launch Scout, a custom software development firm in Cincinnati. He created the company’s apprenticeship program, mentors new developers, and helps sets technology direction. He loves sharing what he’s learned from over 25 years of developing software across a wide range of industries. Chris has given workshops across the country and spoken at conferences including Elixirconf, RailsConf, RubyConf, JavaOne, CodeMash and Scottish Ruby Conf.
      ",
        "LiveState: LiveView re-imagined"
      ),
      spk(
        "Josh Price",
        "josh-price",
        "josh-price.jpg",
        "Josh Price is a polyglot software developer and technology consultant from Sydney, Australia.He’s passionate about modern approaches to Software Development and helping teams build amazing software faster with better tooling. He’s organised community events such as the Elixir Sydney and GraphQL Sydney meetups for many years.He also co-founded Alembic, which is building a team to bring functional programming benefits to everyone’s day to day work. When not running Alembic or thinking about how to build software more effectively, he’ll generally enjoy talking interesting ideas over a pint of craft beer. or thinking sabout his next adventure.",
        "Ash 3.0: The Fast Track to Full Stack"
      ),
      spk(
        "Ruth Kohtz Ek",
        "ruth-kohtz",
        "ruth-kohtz.jpeg",
        "Ruth Kohtz Ek has been teaching without a license since 2010. She has facilitated workshops for middle schoolers through adults on poetry, pregnancy and STD-prevention, and trauma-informed yoga, as well as taking on training roles in a variety of jobs from retail to public schools to non-profits. Ruth currently works at BraveBe Child Advocacy Center in Lincoln NE, where she lives with her husband Andrew, their beautiful daughter, and a majestic cat.
        ",
        "Effective Teaching and Training Practices for Software Developers"
      ),
      spk(
        "Lars Wikman",
        "lars-wikman",
        "lars-wikman.jpg",
        "Founder and writer of Underjord. An experimental programmer ranging from embedded Nerves to LiveView frontends. Shares enthusiasm for the BEAM across writing, podcasts, videos and livestreams. Just wants to make things that do things.",
        nil
      ),
      spk(
        "Andrea Leopardi",
        "andrea-leopardi",
        "andrea-leopardi.jpeg",
        "Andrea (he/him) is a software engineer and architect, a public speaker, trainer, and book author. He's been a member of the Elixir core team for several years. He works as a principal engineer at Veeps. He's from far far away, a tiny town in the middle of Italy.
        ",
        "The World is a Network (and We are Just Nodes)"
      ),
      spk(
        "Bruce Tate",
        "bruce-tate",
        "bruce-tate.jpeg",
        "Bruce Tate lives in Chattanooga, Tennessee. An avid adventurer, he enjoys kayaking rivers, indoor climbing, and boating. He has actively participated in the launch of three companies. With a strong focus on education, Bruce is an author of over a dozen books and a prominent figure in the Elixir community as a speaker, author, editor, and conference organizer. In 2018, he founded Groxio, a platform dedicated to teaching computer languages. Bruce Tate's contributions in the field of programming education have made a significant impact nationally and beyond.",
        nil
      ),
      spk(
        "Brian Cardarella",
        "brian-cardarella",
        "brian-cardarella.jpg",
        "Founder and CEO of DockYard.",
        nil
      )
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
