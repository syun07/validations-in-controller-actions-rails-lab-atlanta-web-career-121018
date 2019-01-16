class Author < ActiveRecord::Base
  #name cannot be blank
  validates :name, length: { minimum: 1 }

  #email is unique
  validates :email, uniqueness: true
end
