require('rspec')
require('pry')
require('parcels')

describe('parcels') do
  it("will return the volume of a parcel") do
    shoebox = Parcel.new(7.5,5,14,2)
    expect(shoebox.volume()).to(eq(525))
  end
  it("will return the shipping cost based on time") do
    shoebox_shipping = Parcel.new()
    expect(shoebox_shipping.cost_to_ship()).to(eq(7))
  end
end
