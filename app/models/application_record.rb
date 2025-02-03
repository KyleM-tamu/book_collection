class ApplicationRecord < ActiveRecord::Base
  # has_many :books, through: :user_books
  # has_many :user_books

  primary_abstract_class
end
