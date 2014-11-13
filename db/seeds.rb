StatusUpdate.delete_all

30.times do
  StatusUpdate.create user: Faker::Internet.user_name,
                      status: Faker::Company.bs,
                      likes: rand(10000000)
end
