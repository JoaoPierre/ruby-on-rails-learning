require_relative "crud"

class Student
  include Crud
  attr_accessor :first_name, :last_name, :email, :username, :password

  def initialize(first_name, last_name, username, password, email)
    @email = email
    @first_name = first_name
    @last_name = last_name
    @username = username
    @password = password
  end

  def to_s
    "First name: #{@first_name}, Last name: #{@last_name}"
  end
end

joao = Student.new("joao", "pierre", "pipi", "20344996@", "jppierre90@gmail.com")
p joao
