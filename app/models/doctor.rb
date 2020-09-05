class Doctor < ActiveRecord::Base
  # This syntax comes from ActiveRecord
  validates(:first_name, presence: true)
  validates :last_name, presence: true
  validates :email, uniqueness: true

  # This is to check that a pair of first and last names must be unique
  validates :first_name, uniqueness: { scope: :last_name }

  has_many :interns
end
