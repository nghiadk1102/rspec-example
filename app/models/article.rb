class Article < ApplicationRecord
  belongs_to :user
  validates :title, presence: :true, length: {in: 6..200}

  def downcase_title
    self.title = title.downcase!
  end

  def capitalize_title
    self.title = title.capitalize!
  end

  def upcase_description
    self.title = description.upcase!
  end
end
