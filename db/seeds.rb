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
plans = ['Learning JS', "Learning to Run!", "Sewing", "Carpentry", "Sailing"]

plans.each do |name|
  user = User.order(Arel.sql('RANDOM()')).first
  plan = Plan.create(name: name, user_id: user.id)
  plan.save!
  puts "Plan #{plan.name} created with id #{plan.id}!"
end

puts "Creating some content for the Learning JS Plan!"
js_plan = Plan.first

puts "Adding a category and some tags! 🏴🏁🚩🏳‍🌈"
js_plan.tag_list.add "javascript", "coding", "computing"
js_plan.category_list.add "Technology"
js_plan.save!

puts "Creating some resources! 🍎🍔🍤"
urls = ['https://programmingwithmosh.com/javascript/setup-eslint-and-prettier-in-your-react-project/', 'https://www.freecodecamp.org/', 'https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array']

urls.each do |url|
  resource = Resource.create(url: url)
  resource.plan = js_plan
  resource.save!
  puts "Resource with id #{resource.id} created!"
end

puts "Resources created!"

puts "Creating some goals! 🎯🎯"

goals = ['Code my business idea', 'Get a job as a junior developer', 'Impress my friends']

goals.each do |content|
  goal = Goal.create(content: content)
  goal.plan = js_plan
  goal.save!
  puts "Goal with id #{goal.id} created!"
end

puts "Creating some tasks! 👮🏾‍♂️👮🏼‍♀️"

tasks = [{ due_date: "2022-01-09", action: "Complete one Code Kata" },
         { due_date: "2022-01-12", action: "Call Paal about enrolling with Le Wagon" },
         { due_date: "2022-01-15", action: "Watching coding garden youtube video on arrays" },
         { due_date: "2022-02-01", action: "Complete some freecodecamp lessons" }]

tasks.each do |content|
  task = Task.create(due_date: content[:due_date], action: content[:action])
  task.plan = js_plan
  task.save!
  puts "Task with id #{task.id} created!"
end

puts "Creating one diary entry! 💭"

entry = DiaryEntry.create(mood: "Excited", title: "Beginning my learning journey", content: "Today I begin to learn javascript. I cannot wait to be able to build my billion dollar unicorn company and go to the mooon 🚀🌕")
entry.plan = js_plan
entry.save!

puts "All Done!"
