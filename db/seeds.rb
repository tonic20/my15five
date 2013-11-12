# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

User.create email: "admin@test.com", password: "qwerty"

Question.create([
  {subject: "What's going well? Any wins (big or little) this week?", position: 1},
  {subject: "What challenges are you facing? Where are you stuck?", position: 2},
  {subject: "How are you feeling? What's the morale you see around you?", position: 3},
  {subject: "One suggestion to improve your role, team or organization?", position: 4},
])