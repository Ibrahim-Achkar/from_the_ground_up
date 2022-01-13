# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "If you ran db:reset, destroying all tables, bye bob! 💣"

puts "Creating new users 🧑🏼🧑🏾🧔🏼🧔🏾"
users = [{ name: 'Bob', email: 'bob@mail.com', password: 'aaaaaa' },
         { name: 'Gazza', email: 'gazza@mail.com', password: 'aaaaaa' }]

users.each do |person|
  user = User.create(username: person[:name], email: person[:email], password: person[:password])
  user.save!
  puts "User #{user.username} created with id #{user.id}!"
end

puts "Creating new plans 📜📜"
plans = ['Learning JS', "Learning to Run!", "How to Sew", "Carpentry for beginners", "Sailing for dummies"]

plans.each do |name|
  user = User.order(Arel.sql('RANDOM()')).first
  plan = Plan.create(name: name, user_id: user.id)
  plan.save!
  puts "Plan #{plan.name} created with id #{plan.id}!"
end

puts "Creating some content for the plans!"
js_plan = Plan.first
run_plan = Plan.second
sew_plan = Plan.third
carp_plan = Plan.fourth
sail_plan = Plan.fifth

puts "Adding a category and some tags! 🏴🏁🚩🏳‍🌈"
js_plan.tag_list.add "javascript", "coding", "computing"
js_plan.category_list.add "Tech"
js_plan.save!

run_plan.tag_list.add "running", "fitness", "jogging"
run_plan.category_list.add "Sport & Fitness"
run_plan.save!

sew_plan.tag_list.add "craft", "sewing", "needles"
sew_plan.category_list.add "Art"
sew_plan.save!

carp_plan.tag_list.add "woodwork", "timber", "cabinetry"
carp_plan.category_list.add "Misc"
carp_plan.save!

sail_plan.tag_list.add "boats", "yacht", "water"
sail_plan.category_list.add "Sport & Fitness"
sail_plan.save!

puts "Creating some resources! 🍎🍔🍤"
js_urls = ['https://programmingwithmosh.com/javascript/setup-eslint-and-prettier-in-your-react-project/', 'https://www.freecodecamp.org/', 'https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array']

js_urls.each do |url|
  resource = Resource.create(url: url)
  resource.plan = js_plan
  resource.save!
end

run_urls = ['https://www.runnersworld.com/training/a20810315/the-worlds-simplest-learn-to-run-program/', 'https://www.nerdfitness.com/blog/running-properly/', 'https://www.verywellfit.com/running-quick-start-1st-month-2911195']

run_urls.each do |url|
  resource = Resource.create(url: url)
  resource.plan = run_plan
  resource.save!
end

carp_urls = ['https://www.thecrucible.org/guides/woodworking/', 'https://www.2dodone.com/blog/8-carpentry-tips-beginners/', 'https://www.familyhandyman.com/list/surprisingly-simple-woodworking-projects-for-beginners/']

carp_urls.each do |url|
  resource = Resource.create(url: url)
  resource.plan = carp_plan
  resource.save!
end

sail_urls = ['https://www.tripsavvy.com/learn-how-to-sail-2915462', 'https://www.discoverboating.com/resources/learning-the-basics-of-sailing', 'https://www.popularmechanics.com/home/how-to-plans/a35842979/how-to-get-started-in-sailing/']

sail_urls.each do |url|
  resource = Resource.create(url: url)
  resource.plan = sail_plan
  resource.save!
end

sew_urls = ['https://crazylittleprojects.com/sewing-for-beginners-learn-to-sew/', 'https://sewthispattern.com/sewing-school-2/', 'https://www.tillyandthebuttons.com/p/learn-to-sew.html']

sew_urls.each do |url|
  resource = Resource.create(url: url)
  resource.plan = sew_plan
  resource.save!
end

puts "Resources created!"

puts "Creating some goals! 🎯🎯"

js_goals = ['Code my business idea', 'Get a job as a junior developer', 'Impress my friends']

js_goals.each do |content|
  goal = Goal.create(content: content)
  goal.plan = js_plan
  goal.save!
end

run_goals = ['Learn to run faster', 'Reduce Injuries', 'Keep a better pace']

run_goals.each do |content|
  goal = Goal.create(content: content)
  goal.plan = run_plan
  goal.save!
end

carp_goals = ['Make a photo frame', 'Cut wood straighter', 'Woodworking safety']

carp_goals.each do |content|
  goal = Goal.create(content: content)
  goal.plan = carp_plan
  goal.save!
end

sail_goals = ['Sail to Tasmania', 'Do not drown', 'Water safety']

sail_goals.each do |content|
  goal = Goal.create(content: content)
  goal.plan = sail_plan
  goal.save!
end

sew_goals = ['Sew a hem', 'Learn to use a sewing machine', 'Sew by hand']

sew_goals.each do |content|
  goal = Goal.create(content: content)
  goal.plan = sew_plan
  goal.save!
end

puts "Creating some tasks! 👮🏾‍♂️👮🏼‍♀️"

js_tasks = [{ due_date: "2022-01-09", action: "Complete one Code Kata" },
         { due_date: "2022-01-12", action: "Call Paal about enrolling with Le Wagon" },
         { due_date: "2022-01-15", action: "Watching coding garden youtube video on arrays" },
         { due_date: "2022-02-01", action: "Complete some freecodecamp lessons" }]

js_tasks.each do |content|
  task = Task.create(due_date: content[:due_date], action: content[:action])
  task.plan = js_plan
  task.save!
end

run_tasks = [{ due_date: "2022-01-03", action: "Go for a short run" },
         { due_date: "2022-01-16", action: "Enquire about running coach" },
         { due_date: "2022-01-19", action: "Run 2km non-stop" },
         { due_date: "2022-02-04", action: "Run 4km non-stop" }]

run_tasks.each do |content|
  task = Task.create(due_date: content[:due_date], action: content[:action])
  task.plan = run_plan
  task.save!
end

carp_tasks = [{ due_date: "2022-01-02", action: "Go to Bunnings buy supplies" },
         { due_date: "2022-01-10", action: "Practice using a saw" },
         { due_date: "2022-01-13", action: "Use a mitre box" },
         { due_date: "2022-02-14", action: "Make a simple join" }]

carp_tasks.each do |content|
  task = Task.create(due_date: content[:due_date], action: content[:action])
  task.plan = carp_plan
  task.save!
end

sail_tasks = [{ due_date: "2022-01-02", action: "Join a sailing club" },
         { due_date: "2022-01-10", action: "Watch some sailing documentaries" },
         { due_date: "2022-01-13", action: "Buy a little boat" },
         { due_date: "2022-02-14", action: "Leave for Tasmania" }]

sail_tasks.each do |content|
  task = Task.create(due_date: content[:due_date], action: content[:action])
  task.plan = sail_plan
  task.save!
end

sew_tasks = [{ due_date: "2022-01-02", action: "Go to Spotlight and get supplies" },
         { due_date: "2022-01-10", action: "Watch some youtube videos on how to thread a needle" },
         { due_date: "2022-01-13", action: "Sew my first button" },
         { due_date: "2022-02-14", action: "Buy a sewing maching" }]

sew_tasks.each do |content|
  task = Task.create(due_date: content[:due_date], action: content[:action])
  task.plan = sew_plan
  task.save!
end

puts "Creating one diary entry! 💭"

js_entry = DiaryEntry.create(mood: "Excited", title: "Beginning my learning journey", content: "Today I begin to learn javascript. I cannot wait to be able to build my billion dollar unicorn company and go to the mooon 🚀🌕")
js_entry.plan = js_plan
js_entry.save!

run_entry = DiaryEntry.create(mood: "Motivated", title: "Starting to run, injury free", content: "Today I have chosen to start learing to run, I'm scared of the injuries but also looking forward to getting faster! 🏃‍♂️")
run_entry.plan = run_plan
run_entry.save!

carp_entry = DiaryEntry.create(mood: "Intrigued", title: "Playing with timber", content: "I've always liked the idea of making things with timber and today I am starting my journey, I want to make a photo frame first and see where we can take it from there. I need to learn a lot about all the tools and types of wood, so I'm excited to get started and dive in! 🪑")
carp_entry.plan = carp_plan
carp_entry.save!

sail_entry = DiaryEntry.create(mood: "Scared", title: "Sailing to Tasmania - The Dream", content: "Today I woke up with a crazy idea to try and learn how to sail to Tasmania! I can't swim so I'm petrified but I'm going to join a club and buy a boat and just wing it! ⛵️")
sail_entry.plan = sail_plan
sail_entry.save!

sew_entry = DiaryEntry.create(mood: "Ouch my finger", title: "I just want to be able to sew on my own buttons", content: "I am over the exccessive cost associated with clothing alterations so I have chose to try and learn some basics myself! No more missing buttons for me! 🪡")
sew_entry.plan = sew_plan
sew_entry.save!

puts "All Done!"
