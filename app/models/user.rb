class User < ActiveRecord::Base
  has_many :posts
  
  def index
  end

end
