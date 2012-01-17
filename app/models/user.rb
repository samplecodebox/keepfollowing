class User < ActiveRecord::Base
  validates :name,:presence => true
  has_many :followings, :dependent => :destroy
  has_many :followees, :through => :followings

  has_many :inverse_followings, :class_name => "Following", :foreign_key => :followee_id, :dependent => :destroy
  has_many :followers, :through => :inverse_followings, :source => :user

  def not_followee?(user)
    self.followees.exclude?(user)
  end
end
