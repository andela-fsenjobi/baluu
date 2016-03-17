require 'rails_helper'

RSpec.describe "bookings/index", type: :view do
  before(:each) do
    assign(:bookings, [
      Booking.create!(
        :flight_id => "",
        :passenger_id => ""
      ),
      Booking.create!(
        :flight_id => "",
        :passenger_id => ""
      )
    ])
  end

  it "renders a list of bookings" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
