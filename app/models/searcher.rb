class Searcher < ApplicationRecord
  has_many :categories
  has_many :posts, through: :categories, inverse_of: :searcher
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         validates :name, presence: { message: "Must be given please" },format: { with: /\A[a-zA-Z]+\z/, message: "Only letters are allowed!" }
         validates :email, uniqueness: true, on: :create, length: { in: 6..30 }
         validates :name, :email, :encrypted_password, :contact, :address,  presence: true
         validates :name, presence: { case_sensitive: false }
         validates :contact, presence: {message: "Please enter only numbers!"}, numericality: true, length: { in:10..12}
   
  
         def contractor?
          searcher_type == 'contractor'
         end
end
