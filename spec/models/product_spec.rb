require 'spec_helper'

describe Product do
  
  let(:vendor) { FactoryGirl.create(:vendor) }
  before do
    #@product = Product.new(vendor_id: vendor.id, name: "Necklace", description: "Vintage Owl Pendant Long Bronze Chain Necklace Clothes", price: 15.99)
    @product = vendor.products.create(name: "Necklace", description: "Vintage Owl Pendant Long Bronze Chain Necklace Clothes", price: 15.99)
  end
  
  subject { @product }
  it {should respond_to(:name)}
  it {should respond_to(:description)}
  it {should respond_to(:price)}
  
  it {should be_valid}
  
  describe "when new name is not present" do
    before { @product.name = "" }
    it { should_not be_valid }
  end
  
  describe "when new name is too long" do
    before { @product.name = "a"*251 }
    it { should_not be_valid }
  end
  
  describe "when price is not set" do
    before { @product.price = nil }
    it { should_not be_valid }
  end  
  
  describe "when price is less than zero" do
    before { @product.price = -1 }
    it { should_not be_valid }
  end  
  
  describe "when vendor is not present" do
    before { @product.vendor_id = nil }
    it { should_not be_valid }
  end
  
  describe "accessible attributes" do
    it "should not allow access to vendor_id" do
      expect do
        Product.new(vendor_id: vendor.id)
      end.to raise_error(ActiveModel::MassAssignmentSecurity::Error)
    end    
  end
end 
