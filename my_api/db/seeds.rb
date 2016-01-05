students = ["paul", "kyle", "steven", "nicole", "josh", "galen", "clone", "nathan"]


students.each do |student|
  Student.create(name:student)
end

ids = [1,2,3,4]

5.times do
  ids.each do |badge|
   Badge.create(
    catchphrase:Faker::Hacker.say_something_smart,
    student_id:badge,
    vote: rand(100))
  end
end