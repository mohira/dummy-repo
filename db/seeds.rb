images = ['female.png', 'male.png']

10.times do |i|
  i = i.to_s
  rand_num = rand(0..1)

  user = User.create(
    email: "user#{i}@example.com",
    password: 'password',
    name: "user#{i}",
    image: open("#{Rails.root}/test/fixtures/files/" + images[rand_num]),
    sex: rand_num
  )

  UserProfile.create(
    user_id: user.id,
    age: rand(20..40),
    height: rand(150..180),
    weight: rand(50..80)
  )
end