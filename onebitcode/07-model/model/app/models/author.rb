class Author < ApplicationRecord
  has_many :books
  has_one :biograph
end
