class Tweet < ApplicationRecord
    belongs_to :user
    has_many :tags

    attribute :hashtags
    after_create :create_tag

    def create_tag
        hashtags.split(",").each do |h|
            hashtag = Hashtag.find_or_create_by name: h 
            Tag.create tweet: self, hashtag: hashtag
        end
    end

    def list_hashtag
        tags.map{|t| t.hashtag.name}.join(",")
    end

    def creation_date 
        created_at.strftime("%e %b %Y")
    end
end