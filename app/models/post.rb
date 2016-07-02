class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  def self.random
    random_number = rand(self.count)
    self.offset(random_number).first
  end

end
