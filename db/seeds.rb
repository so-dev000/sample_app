# frozen_string_literal: true

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.find_or_create_by!(email: 'example@railstutorial.org') do |user|
  user.name = 'Example User'
  user.password = 'password'
  user.password_confirmation = 'password'
  user.admin = true
  user.activated = true
  user.activated_at = Time.zone.now
end

99.times do |n|
  email = "example-#{n + 1}@railstutorial.org"
  User.find_or_create_by!(email: email) do |user|
    user.name = Faker::Name.name
    user.password = 'password'
    user.password_confirmation = 'password'
    user.activated = true
    user.activated_at = Time.zone.now
  end
end

users = User.order(:created_at).take(6)
50.times do
  content = Faker::Lorem.sentence(word_count: 5)
  users.each { |user| user.microposts.create!(content: content) }
end

users = User.all
user  = users.first
following = users[2..50]
followers = users[3..40]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }
