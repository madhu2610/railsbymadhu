class Student < ApplicationRecord
    mount_uploader :image, ImageUploader
    has_one :student_profile
    validates :roll_no, :email, :mobile, uniqueness: true
    validates :first_name, length: { minimum: 3 }
    validates :mobile, length: { minimum: 10 }
    validates :first_name, :last_name, :age, :roll_no, :email, :mobile, :address, :image, presence: true
    validates :age, :roll_no, :mobile, numericality: { only_integer: true }
    before_save :name_upcase

    def name_upcase 
        self.first_name = self.first_name.upcase
        self.last_name = self.last_name.upcase
    end

end
