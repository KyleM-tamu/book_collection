class Book < ApplicationRecord

  belongs_to :category, optional: true

end
