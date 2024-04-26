class User < ApplicationRecord
    has_many :posts

    validates :name, presence: { message: "Remember your name!"}
    validates :email, presence: { message: "Please input your email"}, uniqueness: { message: "Email is already registered"}, format: { with: URI::MailTo::EMAIL_REGEXP, message: "Please enter a valid email"}
    validates :password, presence: { message: "A password is needed"}, length: { minimum: 6, message: "Please enter a password with at least 6 characters"}
end