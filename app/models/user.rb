class User < ApplicationRecord
  has_many :articles
  validates :name, presence: true, length: {in: 6..20}
end
