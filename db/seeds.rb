# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "If you ran db:reset then all tables have been destroyed, bye bob! 💣"

puts "Creating new users 🧑🏼🧑🏾🧔🏼🧔🏾"
users = [{ name: "Bob", email: "bob@mail.com", password: "aaaaaa" },
         { name: "Mary", email: "mary@mail.com", password: "aaaaaa" },
         { name: "Ruby", email: "ruby@mail.com", password: "aaaaaa" },
         { name: "Cleo", email: "cleo@mail.com", password: "aaaaaa" },
         { name: "Anthony", email: "anthony@mail.com", password: "aaaaaa" },
         { name: "Fern", email: "fern@mail.com", password: "aaaaaa" },
         { name: "Mickey", email: "mickey@mail.com", password: "aaaaaa" },
         { name: "Skye", email: "skye@mail.com", password: "aaaaaa" },
         { name: "Benny", email: "benny@mail.com", password: "aaaaaa" },
         { name: "Gazza", email: "gazza@mail.com", password: "aaaaaa" }]

users.each do |person|
  user = User.create(username: person[:name], email: person[:email], password: person[:password])
  user.save!
  puts "User #{user.username} created with id #{user.id}!"
end

plans = [
  {
    name: "Learning JS",
    tags: ["javascript", "coding", "computing"],
    category: "Tech",
    urls: ["https://programmingwithmosh.com/javascript/setup-eslint-and-prettier-in-your-react-project/",
           "https://www.freecodecamp.org/", "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array"],
    goals: ["Code my business idea", "Get a job as a junior developer", "Impress my friends"],
    tasks: [{ due_date: "2022-01-09", action: "Complete one Code Kata" },
            { due_date: "2022-01-12", action: "Call Paal about enrolling with Le Wagon" },
            { due_date: "2022-01-15", action: "Watching coding garden youtube video on arrays" },
            { due_date: "2022-02-01", action: "Complete some freecodecamp lessons" }],
    diary_entries: [{ title: "Beginning my learning journey",
                      content: "Today I begin to learn javascript. I cannot wait to be able to build my billion dollar unicorn company and go to the mooon 🚀🌕",
                      mood: "😀" }],
  },
  {
    name: "Learning to Run!",
    tags: ["running", "fitness", "jogging"],
    category: "Sport & Fitness",
    urls: ["https://www.runnersworld.com/training/a20810315/the-worlds-simplest-learn-to-run-program/",
           "https://www.nerdfitness.com/blog/running-properly/", "https://www.verywellfit.com/running-quick-start-1st-month-2911195"],
    goals: ["Learn to run faster", "Reduce Injuries", "Keep a better pace"],
    tasks: [{ due_date: "2022-01-03", action: "Go for a short run" },
            { due_date: "2022-01-16", action: "Enquire about running coach" },
            { due_date: "2022-01-19", action: "Run 2km non-stop" },
            { due_date: "2022-02-04", action: "Run 4km non-stop" }],
    diary_entries: [{ title: "Starting to run, injury free",
                      content: "Today I have chosen to start learing to run, I'm scared of the injuries but also looking forward to getting faster! 🏃‍♂️",
                      mood: "😎" }],
  },
  {
    name: "How to Sew",
    tags: ["craft", "sewing", "needles"],
    category: "Misc",
    urls: ["https://crazylittleprojects.com/sewing-for-beginners-learn-to-sew/",
           "https://sewthispattern.com/sewing-school-2/", "https://www.tillyandthebuttons.com/p/learn-to-sew.html"],
    goals: ["Sew a hem", "Learn to use a sewing machine", "Sew by hand"],
    tasks: [{ due_date: "2022-01-02", action: "Go to Spotlight and get supplies" },
            { due_date: "2022-01-10", action: "Watch some youtube videos on how to thread a needle" },
            { due_date: "2022-01-13", action: "Sew my first button" },
            { due_date: "2022-02-14", action: "Buy a sewing maching" }],
    diary_entries: [{ title: "I just want to be able to sew on my own buttons",
                      content: "I am over the exccessive cost associated with clothing alterations so I have chose to try and learn some basics myself! No more missing buttons for me!",
                      mood: "😫" }],
  },
  {
    name: "Carpentry for beginners",
    tags: ["woodwork", "timber", "cabinetry"],
    category: "Art",
    urls: ["https://www.thecrucible.org/guides/woodworking/",
           "https://www.2dodone.com/blog/8-carpentry-tips-beginners/", "https://www.familyhandyman.com/list/surprisingly-simple-woodworking-projects-for-beginners/"],
    goals: ["Make a photo frame", "Cut wood straighter", "Woodworking safety"],
    tasks: [{ due_date: "2022-01-02", action: "Go to Bunnings buy supplies" },
            { due_date: "2022-01-10", action: "Practice using a saw" },
            { due_date: "2022-01-13", action: "Use a mitre box" },
            { due_date: "2022-02-14", action: "Make a simple join" }],
    diary_entries: [{ title: "Playing with timber",
                      content: "I've always liked the idea of making things with timber and today I am starting my journey, I want to make a photo frame first and see where we can take it from there. I need to learn a lot about all the tools and types of wood, so I'm excited to get started and dive in! 🪑",
                      mood: "😛" }],
  },
  {
    name: "Sailing",
    tags: ["boats", "yacht", "water"],
    category: "Sport & Fitness",
    urls: ["https://www.tripsavvy.com/learn-how-to-sail-2915462",
           "https://www.discoverboating.com/resources/learning-the-basics-of-sailing", "https://www.popularmechanics.com/home/how-to-plans/a35842979/how-to-get-started-in-sailing/"],
    goals: ["Sail to Tasmania", "Learn to use a Spinnaker", "Sail around the World"],
    tasks: [{ due_date: "2022-01-02", action: "Join a sailing club" },
            { due_date: "2022-01-10", action: "Watch some sailing documentaries" },
            { due_date: "2022-01-13", action: "Buy a little boat" },
            { due_date: "2022-02-14", action: "Leave for Tasmania" }],
    diary_entries: [{ title: "Sailing to Tasmania - The Dream",
                      content: "Today I woke up with a crazy idea to try and learn how to sail to Tasmania! I can't swim so I'm petrified but I'm going to join a club and buy a boat and just wing it! ⛵️",
                      mood: "🤯" }],
  },
  {
    name: "Oil Painting",
    tags: ["painting", "art", "oil"],
    category: "Art",
    urls: ["https://www.artistsnetwork.com/art-mediums/oil-painting/top-10-oil-painting-tips-from-johannes-vloothuis/",
           "https://www.creativebloq.com/advice/oil-painting-techniques-10-essential-tips", "https://gamblincolors.com/tips-and-techniques/"],
    goals: ["Paint my Dog", "Make realistic clowds", "Hold an exhibition"],
    tasks: [{ due_date: "2022-01-02", action: "Paint some clouds" },
            { due_date: "2022-01-08", action: "Paint along on with youtube" },
            { due_date: "2022-01-20", action: "Buy some brushes" },
            { due_date: "2022-02-14", action: "Read oil painting for dummies" }],
    diary_entries: [{ title: "How I would love to paint my dog",
                      content: "He has such a brilliant coat, I bet it would look amazing as an oil",
                      mood: "🤪" }],
  },
  {
    name: "Car Maintenance",
    tags: ["cars", "mechanics", "engines"],
    category: "Misc",
    urls: ["https://www.familyhandyman.com/list/tips-to-keep-your-car-running-and-looking-good/",
           "https://jalopnik.com/how-to-do-the-bare-minimum-of-car-maintenance-in-six-ea-1788009186", "https://www.youtube.com/watch?v=VnwXFEO4JHY"],
    goals: ["Rebuild an Engine", "Install a turbo", "Say goodbye to my mechanic"],
    tasks: [{ due_date: "2022-01-02", action: "Buy some oil" },
            { due_date: "2022-01-03", action: "Change my oil" },
            { due_date: "2022-01-20", action: "Order head gasket repair kit" },
            { due_date: "2022-02-14", action: "Rotate tyres" }],
    diary_entries: [{ title: "Subarus",
                      content: "Subarus. What can I say. If I had bought a Toyota I wouldn't have to learn how to fix a car!",
                      mood: "😡" }],
  },
  {
    name: "Baking Sourdough",
    tags: ["baking", "food", "cooking"],
    category: "Cooking",
    urls: ["https://www.theperfectloaf.com/beginners-sourdough-bread/",
           "https://www.kingarthurbaking.com/learn/guides/sourdough", "https://flour.co.uk/blog/how-to-create-a-mother-dough"],
    goals: ["Create a starter everyone wants", "Bake really good bread", "Have good times with my friends making bread"],
    tasks: [{ due_date: "2022-01-02", action: "Feed Mother" },
            { due_date: "2022-01-03", action: "Buy a dutch oven" },
            { due_date: "2022-01-20", action: "Feed mother" },
            { due_date: "2022-02-14", action: "Buy some organic spelt flour" }],
    diary_entries: [{ title: "Bread is literally the best",
                      content: "Is there anything in the world than coating a tasty morstel of warm, home cooked bread in salty butter and jamming it in your mouth? NOTHING. it is literally the best thing in the world. Don't let anybody tell you different. Now pass me another slice.",
                      mood: "😂" }],
  },
  {
    name: "Learning Ruby on Rails",
    tags: ["programming", "coding", "full-stack"],
    category: "Tech",
    urls: ["https://github.com/lewagon/rails-templates",
           "https://rubyonrails.org/", "https://www.toptal.com/ruby-on-rails/after-two-decades-of-programming-i-use-rails"],
    goals: ["Code my business idea", "Make my partner a word game", "Get a job as a rails programmer"],
    tasks: [{ due_date: "2022-01-02", action: "Do a coding challenge" },
            { due_date: "2022-01-03", action: "Create a todo app" },
            { due_date: "2022-01-20", action: "Go to rails meetup" },
            { due_date: "2022-02-14", action: "Read up on new version of rails" }],
    diary_entries: [{ title: "Ruby on Rails is Magic",
                      content: "You just click a few buttons and you have a fully functioning app. It makes creating a new idea really easy!",
                      mood: "🤯" }],
  },
  {
    name: "Kayaking",
    tags: ["rivers", "boating", "whitewater"],
    category: "Sport & Fitness",
    urls: ["https://www.theurbanlist.com/melbourne/a-list/best-place-to-go-kayaking-in-melbourne",
           "https://www.racv.com.au/royalauto/travel/victoria/kayak-guide-victoria.html"],
    goals: ["Kayak the Murray River", "Get comfortable in whitewater", "Take my friends kayaking"],
    tasks: [{ due_date: "2022-01-02", action: "Get up early for some practice" },
            { due_date: "2022-01-03", action: "Visualise going down a river" },
            { due_date: "2022-01-20", action: "Pushups and situps!" },
            { due_date: "2022-02-14", action: "Practice oar technique" }],
    diary_entries: [{ title: "Mindfulness on the river",
                      content: "When I'm out kayaking I don't think about anything else. My mind is clear and there is noone but me and the water. And the ducks. Always ducks.",
                      mood: "😎" }]
  },
  {
    name: "Art of Japanese Tea",
    tags: ["tea", "tea-making", "green-tea"],
    category: "Health & Wellbeing",
    urls: ["https://en.wikipedia.org/wiki/Japanese_tea_ceremony",
           "https://www.metmuseum.org/toah/hd/jtea/hd_jtea.htm",
           "https://shop.konmari.com/collections/tea-ceremony"],
    goals: ["Hold a tea ceremony", "Connect with my community", "Enjoy simple pleasures"],
    tasks: [{ due_date: "2022-01-02", action: "Buy a tea set" },
            { due_date: "2022-01-03", action: "Watch some tea ceremony videos" },
            { due_date: "2022-01-20", action: "Have a tea ceremony" },
            { due_date: "2022-02-14", action: "Make some matcha powder" }],
    diary_entries: [{ title: "Connecting with Japanese Culture",
                      content: "My parents were from Japan but I have never had a chance to go. Learning about japanese tea ceremonies is something that will connect me with my ancestral lands. Perhaps my great-grandmothers used to hold these ceremonies?",
                      mood: "😐" }]
  },
  {
    name: "Drumming",
    tags: ["music", "rock", "metal"],
    category: "Music",
    urls: ["https://www.youtube.com/watch?v=SqXk2efnmNU",
           "https://www.musicradar.com/tuition/drums/14-heavy-metal-drumming-tips-and-techniques-452295",
           "https://www.drumlessons.com/"],
    goals: ["Play flawless metallica", "Keep perfect time", "Master syncopation"],
    tasks: [{ due_date: "2022-01-02", action: "Complete an online lesson" },
            { due_date: "2022-01-03", action: "Create a drum routine" },
            { due_date: "2022-01-20", action: "Practice double paradiddle" },
            { due_date: "2022-02-14", action: "Practice flam tap" }],
    diary_entries: [{ title: "I need a bigger house",
                      content: "Drumming is definitely for me, but my neighbours don't seem to agree. What will I do, they keep throwing a shoe, everytime time I practice my tune",
                      mood: "😨" }]
  },
  {
    name: "Guitar",
    tags: ["music", "jazz"],
    category: "Music",
    urls: ["https://www.uberchord.com/blog/10-guitar-learning-tips-technique-how-to-play-the-guitar/",
           "https://news.fretello.com/learn-guitar-efficiently/",
           "https://www.youtube.com/watch?v=5jTsSvkBv60"],
    goals: ["Join a jazz band", "Own multiple guitars", "Write a jazz song"],
    tasks: [{ due_date: "2022-01-02", action: "Complete an online lesson" },
            { due_date: "2022-01-03", action: "Practice" },
            { due_date: "2022-01-20", action: "Practice" },
            { due_date: "2022-02-14", action: "Practice" }],
    diary_entries: [{ title: "difficult day today",
                      content: "I just can't seem to get the hang of this! But I guess I have to just keep trying...",
                      mood: "🤯" }]
  },
  {
    name: "Advanced Shipbuilding",
    tags: ["wooden boats", "viking longships", "yachts"],
    category: "Misc",
    urls: ["https://www.youtube.com/watch?v=aLZ3YmwSU44",
           "https://www.mysailing.com.au/building-your-own-cruising-yacht/",
           "https://regia.org/research/ships/Ships1.htm"],
    goals: ["Build a yacht", "Build a viking longship", "Sail my boat around Australia"],
    tasks: [{ due_date: "2022-01-02", action: "Read up on viking wood treatments" },
            { due_date: "2022-01-03", action: "Sharpen tools" },
            { due_date: "2022-01-20", action: "Reading time" },
            { due_date: "2022-02-14", action: "Drill wood" }],
    diary_entries: [{ title: "to valhalla",
                      content: "There are no more battles to take me to valhalla. Perhaps if I build a boat the gods will look favourably on me",
                      mood: "😐" }]
  },
  {
    name: "Mexican Food",
    tags: ["cooking", "food", "mexican"],
    category: "Cooking",
    urls: ["https://www.delish.com/cooking/g1393/traditional-mexican-food-0710/",
           "https://downshiftology.com/recipes/chicken-fajitas/",
           "https://revisfoodography.com/2015/08/mexican-style-beans/"],
    goals: ["Get real good at Mexican", "Take a cooking class in Mexico", "Crack the code"],
    tasks: [{ due_date: "2022-01-02", action: "Cook something!" },
            { due_date: "2022-01-03", action: "Cook something!" },
            { due_date: "2022-01-20", action: "Experiment with chilli substitutes" },
            { due_date: "2022-02-14", action: "Cook something!" }],
    diary_entries: [{ title: "Mexican food for basic eaters",
                      content: "As someone who doesn't like chilli I want to make mexican food accessible for people like me!",
                      mood: "😡" }]
  },
  {
    name: "StarCraft 2",
    tags: ["gaming", "rts", "strategy"],
    category: "Gaming",
    urls: ["https://www.youtube.com/watch?v=KK4Trit-MvE",
           "https://lotv.spawningtool.com/build/",
           "https://www.youtube.com/watch?v=S4QD2UMm9nY"],
    goals: ["Achieve diamond rank", "Win a daily tournament", "Learn build order by heart"],
    tasks: [{ due_date: "2022-01-02", action: "Practice micro" },
            { due_date: "2022-01-03", action: "Practice build orders" },
            { due_date: "2022-01-20", action: "10 1v1 games" },
            { due_date: "2022-02-14", action: "Practice micro" }],
    diary_entries: [{ title: "I want to be an epic gamer",
                      content: "True epicness is achieving high ranks in RTS games. I want to be like my heroes on yourtube.",
                      mood: "😎" }]
  },
  {
    name: "Calligraphy",
    tags: ["art", "language", "writing"],
    category: "Language",
    urls: ["https://www.asheeqart.com/blogs/blog/the-reasons-why-we-love-calligraphy",
           "https://www.lettering-daily.com/modern-calligraphy/",
           "https://riotstores.com.au/collections/calligraphy"],
    goals: ["Perfection", "Mastery", "Entertainment"],
    tasks: [{ due_date: "2022-01-02", action: "Practice" },
            { due_date: "2022-01-03", action: "Practice" },
            { due_date: "2022-01-20", action: "Practice" },
            { due_date: "2022-02-14", action: "Practice" }],
    diary_entries: [{ title: "why i love calligraphy",
                      content: "I love the freedom of the pen and how you can change your shapes and flourishes depending on how hard you press or what type of nib you have, calligraphy reminds me so much of life, it can be unpredictable and messy at times but what you will always have is love, passion and authenticity behind every word that I write.",
                      mood: "😂" }]
  },
  {
    name: "Watercolor Painting",
    tags: ["art", "painting", "watercolour"],
    category: "Art",
    urls: ["https://www.eckersleys.com.au/painting/water-colour"],
    goals: ["Paint a forest scene", "Cloud scene", "Make NFTs"],
    tasks: [{ due_date: "2022-01-02", action: "Practice" },
            { due_date: "2022-01-03", action: "Practice" },
            { due_date: "2022-01-20", action: "Practice" },
            { due_date: "2022-02-14", action: "Practice" }],
    diary_entries: [{ title: "how to make trees",
                      content: "I feel like I haven't gotten my leaves down yet. more practice!",
                      mood: "😂" }]
  },
  {
    name: "Weightlifting",
    tags: ["weights", "sports", "gym"],
    category: "Health & Wellbeing",
    urls: ["https://www.asheeqart.com/blogs/blog/the-reasons-why-we-love-calligraphy",
           "https://www.lettering-daily.com/modern-calligraphy/",
           "https://riotstores.com.au/collections/calligraphy"],
    goals: ["Get ripped", "Squat 100kg", "Get RIPPED"],
    tasks: [{ due_date: "2022-01-02", action: "Legs" },
            { due_date: "2022-01-03", action: "Arms" },
            { due_date: "2022-01-20", action: "Cardio" },
            { due_date: "2022-02-14", action: "Legs" }],
    diary_entries: [{ title: "how good was arnold though",
                      content: "I really look up to the guy. definitely not a meme at all",
                      mood: "😂" }]
  },
  {
    name: "French Language",
    tags: ["language"],
    category: "Language",
    urls: ["https://www.duolingo.com/course/fr/en/Learn-French",
           "http://www.frenchtutorial.com/"],
    goals: ["Perfection", "Mastery", "Entertainment"],
    tasks: [{ due_date: "2022-01-02", action: "Duo lingo" },
            { due_date: "2022-01-03", action: "Conversation with French Speaker" },
            { due_date: "2022-01-20", action: "Duo lingo" },
            { due_date: "2022-02-14", action: "Reading" }],
    diary_entries: [{ title: "how good is french though",
                      content: "so romantic",
                      mood: "😂" }]
  },
]

puts "Creating #{plans.length} new plans 📜📜"

plans.each do |plan|
  user = User.order(Arel.sql("RANDOM()")).first
  plan_record = Plan.create(name: plan[:name], user_id: user.id)

  puts "Plan called #{plan_record.name} created 🤗"

  plan[:tags].each do |tag|
    plan_record.tag_list.add tag
  end

  puts "tags added! 🏷"

  plan_record.category_list.add plan[:category]

  puts "category added! 🐈"

  plan[:urls].each do |url|
    resource = Resource.create(url: url)
    resource.plan = plan_record
    resource.save!
  end

  puts "urls added! 🕸"

  plan[:goals].each do |goal|
    goal_entry = Goal.create(content: goal)
    goal_entry.plan = plan_record
    goal_entry.save!
  end

  puts "goals added! 🥅"

  plan[:tasks].each do |task|
    task_entry = Task.create(due_date: task[:due_date], action: task[:action])
    task_entry.plan = plan_record
    task_entry.save!
  end

  puts "tasks added! 📓"

  plan[:diary_entries].each do |entry|
    task_entry = DiaryEntry.create(title: entry[:title], content: entry[:content])
    task_entry.mood_list.add(entry[:mood])
    task_entry.plan = plan_record
    task_entry.save!
  end

  puts "diary entries added! 👼🏼"

  if plan_record.save!
    puts "plan with id #{plan_record.id} saved! 😋"
  end
end

puts "All Done!"
