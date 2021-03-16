class Post < ApplicationRecord
    validates :content, presence: true#, max: { length: 140 }
end
