3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

puts "3 topics created"

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Shoreditch health goth pinterest cliche. Man braid banh mi man bun jean shorts butcher, occupy green juice plaid shabby chic lumbersexual stumptown franzen tofu. Brunch cloud bread meditation narwhal readymade lyft vinyl letterpress. Biodiesel cardigan gastropub selfies raclette flannel poke chia selvage sriracha gentrify williamsburg gochujang polaroid vice. +1 bushwick locavore, vaporware cronut banh mi hashtag gastropub lumbersexual craft beer.",
    topic_id: Topic.last.id
  )
end

puts "10 blogs created"

skills = ["Ruby on Rails", "Vuejs", "HTML", "CSS", "JS", "GIT", "AWS", "Gitlab", "Docker"]

9.times do |skill|
  Skill.create!(
    title: skills[SecureRandom.random_number(0..8)],
    percent_utilized: "#{SecureRandom.random_number(0..100)} %"
  )
end

puts "9 skills created"

8.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title #{portfolio_item}",
    subtitle: "Ruby on Rails",
    body: "Lorem ipsum dolor amet tousled iPhone brunch ugh, adaptogen master cleanse four dollar toast semiotics. You probably haven't heard of them scenester quinoa paleo, bitters biodiesel art party farm-to-table meggings iPhone semiotics edison bulb venmo retro. Microdosing DIY tofu kogi subway tile polaroid artisan adaptogen woke celiac hammock keytar shabby chic shoreditch. Tacos DIY photo booth jean shorts, iPhone coloring book vegan pitchfork ugh occupy swag iceland sustainable. Marfa cloud bread slow-carb deep v, health goth actually knausgaard organic af pitchfork hammock. Shoreditch health goth pinterest cliche. Man braid banh mi man bun jean shorts butcher, occupy green juice plaid shabby chic lumbersexual stumptown franzen tofu. Brunch cloud bread meditation narwhal readymade lyft vinyl letterpress. Biodiesel cardigan gastropub selfies raclette flannel poke chia selvage sriracha gentrify williamsburg gochujang polaroid vice. +1 bushwick locavore, vaporware cronut banh mi hashtag gastropub lumbersexual craft beer. Shaman single-origin coffee occupy man bun bespoke gochujang, church-key biodiesel street art af chillwave XOXO edison bulb. Microdosing umami irony single-origin coffee humblebrag affogato. IPhone succulents palo santo etsy sartorial mlkshk, knausgaard XOXO prism fixie. Hell of helvetica edison bulb, fanny pack humblebrag lomo microdosing brooklyn beard kinfolk celiac vinyl.",
    main_image: "https://via.placeholder.com/600x400",
    thumb_image: "https://via.placeholder.com/350x200"
  )
end

1.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title #{portfolio_item}",
    subtitle: "Angular",
    body: "Lorem ipsum dolor amet tousled iPhone brunch ugh, adaptogen master cleanse four dollar toast semiotics. You probably haven't heard of them scenester quinoa paleo, bitters biodiesel art party farm-to-table meggings iPhone semiotics edison bulb venmo retro. Microdosing DIY tofu kogi subway tile polaroid artisan adaptogen woke celiac hammock keytar shabby chic shoreditch. Tacos DIY photo booth jean shorts, iPhone coloring book vegan pitchfork ugh occupy swag iceland sustainable. Marfa cloud bread slow-carb deep v, health goth actually knausgaard organic af pitchfork hammock. Shoreditch health goth pinterest cliche. Man braid banh mi man bun jean shorts butcher, occupy green juice plaid shabby chic lumbersexual stumptown franzen tofu. Brunch cloud bread meditation narwhal readymade lyft vinyl letterpress. Biodiesel cardigan gastropub selfies raclette flannel poke chia selvage sriracha gentrify williamsburg gochujang polaroid vice. +1 bushwick locavore, vaporware cronut banh mi hashtag gastropub lumbersexual craft beer. Shaman single-origin coffee occupy man bun bespoke gochujang, church-key biodiesel street art af chillwave XOXO edison bulb. Microdosing umami irony single-origin coffee humblebrag affogato. IPhone succulents palo santo etsy sartorial mlkshk, knausgaard XOXO prism fixie. Hell of helvetica edison bulb, fanny pack humblebrag lomo microdosing brooklyn beard kinfolk celiac vinyl.",
    main_image: "https://via.placeholder.com/600x400",
    thumb_image: "https://via.placeholder.com/350x200"
  )
end

puts "9 portfolio items created"

3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "Technology #{technology}"
  )
end

puts "3 technologies created"