require 'rails_helper'

describe Contact do
  it "has a valid factory" do
    FactoryGirl.create(:contact).should be_valid
  end
  it "is invalid without a firstname" do
    FactoryGirl.build(:contact, firstname: nil).should_not be_valid
  end
  it "is valid without a lastname" do
    FactoryGirl.build(:contact, lastname: nil).should_not be_valid
  end
  it "returns a contact's full name as a string" do
    contact = FactoryGirl.build(:contact, firstname: "John", lastname: "Doe")
    contact.fullname.should == "John Doe"
  end

end
