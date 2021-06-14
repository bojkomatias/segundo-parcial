class Worker < ApplicationRecord
  belongs_to :worker_type
  has_many :guards # Validar que no se superpongan en fechas.
  has_many :appointments # Solo a medicos, Validar que no sea dia de guardia.

  validates :first_name, :last_name, :phone, :email, presence: true

  def full_name
    first_name + ' ' + last_name
  end
  
  # validate :no_reservation_overlap
  # scope :overlapping, ->(period_start, period_end) do
  #     where "((date_start <= ?) and (date_end >= ?))", period_end, period_start
  # end

  # private
  # def no_reservation_overlap
  #   if (Reservation.overlapping(date_start, date_end).any?)
  #     errors.add(:date_end, 'it overlaps another reservation')
  #   end
  # end
end
