require 'bundler/inline'

gemfile true do
  source 'http://rubygems.org'
  gem "bcrypt"
end

module Crud
  require 'bcrypt'
  puts "Module crud Activated"

  def self.create_hash_digest(password)
    BCrypt::Password.create(password)
  end

  def self.verify_hash_digest(password_digest)
    BCrypt::Password.new(password_digest)
  end

  def self.create_secure_users(list_of_users)
    list_of_users.each do |user|
      user[:password] = create_hash_digest(user[:password])
    end
    list_of_users
  end

  def self.authenticate_user(username, password , list_of_users)
    list_of_users.each do |user|
      if user[:username] == username && verify_hash_digest(user[:password]) == password
        return user
      end
    end
    "Credentials were not correct!"
  end
end
