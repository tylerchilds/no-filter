class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
 
  has_many :photos
  has_many :likes
  has_many :comments
  has_many :active_relationships, class_name:  "Relationship",
                                  foreign_key: "stalker_id",
                                  dependent:   :destroy

  has_many :victims, through: :active_relationships
end
