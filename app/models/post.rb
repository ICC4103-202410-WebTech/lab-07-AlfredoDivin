class Post < ApplicationRecord
    belongs_to :user
    has_many :post_tags
    has_many :tags, through: :post_tags

    validates :title, presence: { message: "Title can't be missing" }
    validates :content, presence: { message: "Content is necessary, how else will people see something?" }
    validates :user_id, presence: { message: "For security reasons this can't be missing" }
    validates :answers_count, numericality: { greater_than_or_equal_to: 0, message: "We need to see how many comments there are" }
    validates :likes_count, numericality: { greater_than_or_equal_to: 0, message: "Important I think" }

    before_save :set_time_now_publish_date

    def set_time_now_publish_date
        self.published_at = Time.zone.now
    end
end