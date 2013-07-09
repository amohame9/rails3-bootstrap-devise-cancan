require 'spec_helper'

describe Property do
 before { @property = Property.new(name: "My Home", address: "6 Wellfield Close") }

  subject { @property }

  it { should respond_to(:name) }
  it { should respond_to(:address) }

  it { should be_valid }

  describe "when name is not present" do
    before { @property.name = " " }
    it { should_not be_valid }
  end

  describe "when address is not present" do
    before { @property.address = " " }
    it { should_not be_valid }
  end

  describe "when name is too long" do
    before { @property.name = "a" * 51 }
    it { should_not be_valid }
  end

  describe "when address is already taken" do
    before do
      property_with_same_address = @property.dup
      property_with_same_address.save
    end

    it { should_not be_valid }
  end

end
