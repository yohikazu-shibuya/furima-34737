class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         validates :encrypted_password, presence: true, presence: {message: 'is invalid. Include both letters and numbers'}
         validates :nickname, presence: true, presence: {message: ' cant be blank'}
         validates :birthday, presence: true, presence: {message: ' date cant be blank'}
         validates :last_name, presence: true, presence: {message: ' cant be black'}
         validates :last_name, presence: true, presence: {message: ' is invalid. Input full-width characters'}
         validates :first_name, presence: true, presence: {message: ' cant be black'}
         validates :first_name, presence: true, presence: {message: ' is invalid. Input full-width characters'}
         validates :last_name_kana, presence: true, presence: {message: ' cant be black'}
         validates :last_name_kana, presence: true, presence: {message: ' is invalid. Input full-width characters'}
         validates :first_name_kana, presence: true, presence: {message: ' cant be black'}
         validates :first_name_kana, presence: true, presence: {message: ' is invalid. Input full-width characters'}
end
