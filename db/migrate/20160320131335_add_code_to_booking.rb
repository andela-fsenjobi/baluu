class AddCodeToBooking < ActiveRecord::Migration
  def change
    add_column :bookings, :code, :string
  end
end
