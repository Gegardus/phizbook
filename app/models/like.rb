class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post, optional: true # allow null values for the two foreign keys
  belongs_to :comment, optional: true
end
