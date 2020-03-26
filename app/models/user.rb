class User < ApplicationRecord
    has_secure_password
    validates_uniqueness_of :name
    has_many :posts
    has_many :comments, dependent: :destroy
end
