class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :article
  belongs_to :commentable, :polymorphic => true
  has_many :comments, :as => :commentable
  validates :commentable_id, :presence => true
  validates :text, :presence => true
end
