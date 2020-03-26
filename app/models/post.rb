class Post < ApplicationRecord
    validates_uniqueness_of :title
    belongs_to :user
    has_many :comments, dependent: :destroy
end
    