class Student < ApplicationRecord
  validates :student_name, presence: true, length: { minimum: 3, maximum: 15 }
  validates :email_id, presence: true, length: { minimum: 10, maximum: 30 }
  validates :address, presence: true, length: { minimum: 10, maximum: 50 }
  validates :contact_number, presence: true, length: { minimum: 10, maximum: 10 }
  validates :marks, presence: true, length: { minimum: 2, maximum: 3 }
end