# == Schema Information
#
# Table name: videos
#
#  id          :bigint           not null, primary key
#  title       :string           not null
#  video_url   :text             not null
#  description :text             not null
#  creator_id  :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Video < ApplicationRecord
    validates :title, :description, :creator_id, presence: true

    belongs_to :creator,
    class_name: "User",
    primary_key: :id,
    foreign_key: :creator_id

    has_many :likes, as: :likeable
    has_many :comments, as: :commentable

    has_one_attached :thumbnail
    has_one_attached :video
end
