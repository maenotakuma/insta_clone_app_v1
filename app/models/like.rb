class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post
  has_one :activity, as: :subject, dependent: :destroy
  
  validates :user_id, uniqueness: { scope: :post_id }

  after_create_commit :create_activities

  private

  def create_activities
    Activity.create(subject: self, user: post.user, action_type: :liked_to_own_post)
  end
end
