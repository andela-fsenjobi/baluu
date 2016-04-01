class Booking < ActiveRecord::Base
  has_many :passengers, dependent: :destroy
  belongs_to :flight
  belongs_to :user
  accepts_nested_attributes_for :passengers, reject_if: :all_blank, allow_destroy: true

  validates :flight, presence: true

  def self.search(params)
    where(params.symbolize_keys).first
  end
end
