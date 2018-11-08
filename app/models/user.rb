class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  mount_uploader :photo, PhotoUploader
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :tours, dependent: :destroy
  has_many :bookings
  has_many :booked_tours, through: :bookings, source: :tour

  def booked_tour?(tour)
    self.bookings.each do |booking|
      return true if booking.tour == tour
    end

    return false
  end

  def cancel_booking(tour)
    self.bookings.each do |booking|
      if booking.tour == tour
        booking.destroy
      end
    end
  end
end
