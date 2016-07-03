class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  after_create :clear_cache

  def self.random
    random_number = rand(self.count)
    self.offset(random_number).first
  end

  def self.all_cached
    Rails.cache.fetch('Post.all') { all }
  end

  private

  def clear_cache
    expire_action :action => :index
  end

end
