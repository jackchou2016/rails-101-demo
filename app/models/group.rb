class Group < ActiveRecord::Base
  validates :title, presence:true
  has_many :posts, dependent: :destroy

  has_many :group_users
  has_many :members, through: :group_users, source: :user

  belongs_to :owener, class_name: "User", foreign_key: :user_id

  def editable_by?(user)
   user && user == owener
 end

end
