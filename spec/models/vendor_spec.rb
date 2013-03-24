require 'spec_helper'

describe Vendor do
  before do
    @vendor = Vendor.new(name: "Amazon", description: "Largest online retailer in the world",
                          street_address: "501 Avenue of the Americas", city: "New York", state_abbr: "NY", zip_code: "10011",  
                          url: "http://www.amazon.com")
  end
  
  subject { @vendor }

  it { should respond_to(:name)}
  it { should respond_to(:description)}
  it { should respond_to(:street_address)}
  it { should respond_to(:city)}
  it { should respond_to(:state_abbr)}
  it { should respond_to(:zip_code)}
  it { should respond_to(:url)}
  it { should respond_to(:categories)}

  it { should be_valid }
  
  describe "when new name is not present" do
    before { @vendor.name = "" }
    it { should_not be_valid }
  end
  
  describe "when new name is too long" do
    before { @vendor.name = "a" * 51 }
    it { should_not be_valid }
  end
  
end
