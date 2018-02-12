require('rspec')
require('pry')
require('parcels')

describe('parcels') do
  it("will return the volume of a parcel") do
    shoebox = Parcel.new(33,19,10,2)
    expect(shoebox.volume()).to(eq(6270))
  end
end
