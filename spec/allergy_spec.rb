require('rspec')
require('allergy')

describe('allergy') do
  it("returns the correct allergy for a single score") do
    allergy(16).should(eq("tomatoes"))
  end
    it("returns the correct allergies for a combined score") do
    allergy(24).should(eq("tomatoes, strawberries"))
  end
end
