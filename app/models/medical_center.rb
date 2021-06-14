class MedicalCenter < ApplicationRecord
  belongs_to :medical_center_type
  has_many :guards
  has_many :appointments
  has_many :workers, through: :guards 
  has_many :workers, through: :appointments

  validates :name, :address, :phone, presence: true
end
