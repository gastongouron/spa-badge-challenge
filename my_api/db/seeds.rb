students = ["Andrew Blum",
"Armani Saldana",
"Cecilia 'CJ' Joulain",
"Danielle Cameron",
"Daniel Woznicki",
"Eric Dell'Aringa",
"Gouron Paul",
"Isaac Lee",
"Jeremy Powell",
"Joseph Marion",
"Kai Huang",
"Kim Allen",
"Kyle Smith",
"Mark Janzer",
"Nicole Yee",
"Peter Wiebe",
"Steven Broderick"]

students.each do |student|
  Student.create(name:student)
end

ids = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17]

5.times do
  ids.each do |badge|
   Badge.create(
    catchphrase:Faker::Hacker.say_something_smart,
    student_id:badge,
    vote: rand(100))
  end
end