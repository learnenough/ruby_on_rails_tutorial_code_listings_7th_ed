class User < ApplicationRecord
  .
  .
  .
  # Returns a user's status feed.
  def feed
    part_of_feed = "relationships.follower_id = :id or microposts.user_id = :id"
    Micropost.left_outer_joins(user: :followers)
             .where(part_of_feed, { id: id }).distinct
             .includes(:user, image_attachment: :blob)
  end
  .
  .
  .
end
