class Post < ApplicationRecord
    has_many :categories
    has_many :searchers, through: :categories
    # accepts_nested_attributes_for :searcher
    # validates :job_role, :job_description, :vacancies, presence: true
    validates :job_role, :job_description, :vacancies, presence:{ message: "Must be given please" }
end
