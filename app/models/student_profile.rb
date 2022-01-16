class StudentProfile < ApplicationRecord
  belongs_to :student
  validates :mark1, :mark2, :mark3, :total, numericality: { only_integer: true }
  validates :mark1, :mark2, :mark3, :total, :student_id, presence: true
  validates :student_id, uniqueness: true

end
