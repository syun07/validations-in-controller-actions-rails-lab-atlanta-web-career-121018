class Post < ActiveRecord::Base
  #title cannot be blank
  validates :title, length: { minimum: 1 }

  #category is either fiction/non-fiction
  validates :category, inclusion: { in: %w(Fiction Non-Fiction )}

  #content must be at least 100 characters
  validates :content, length: { minimum: 100 }
end
