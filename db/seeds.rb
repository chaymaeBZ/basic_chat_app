User.create!(username: "alice", password: "wonderland")
User.create!(username: "bob",   password: "azerty")

50.times do |i|
  User.create!(username: "user#{i}", password: "azerty")
end
