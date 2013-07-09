require 'spec_helper'

describe "Properties pages" do

	subject { page }

  describe "property page" do
    before { visit properties_path }

    it { should have_selector('h1',    text: 'My Properties') }
  end

  describe "property page" do

  let(:property) { FactoryGirl.create(:property) }

  before { visit properties_path(property) } 

  #it { should have_selector('h1',    text: property.name) }

  end

  describe "Add Property" do

  	before { visit addproperty_path }

  	let(:submit) { "Add property" }

  	describe "with invalid information" do
      it "should not create a new property" do
        expect { click_button submit }.not_to change(Property, :count)
      end
    end

    describe "with valid information" do
      before do
        fill_in "Name",         with: "Example User"
        fill_in "Address",        with: "123 Another Street"
      end

      it "should create a user" do
        expect { click_button submit }.to change(Property, :count).by(1)
      end	

      describe "after saving the property" do
        before { click_button submit }
        let(:property) { Property.find_by_name('Example User') }

        it { should have_selector('h1', text: property.name) }
        #it { should have_selector('div.alert.alert-success', text: 'Welcome') }
      end

    end  

    describe "edit" do
	  	let(:property) { FactoryGirl.create(:property) }
	    before { visit edit_property_path(property) }

	    describe "page" do
	      it { should have_selector('h1',    text: "Update your property") }
	    end

	    describe "with invalid information" do
	      before { click_button "Save changes" }

	      #it { should have_content('error') }
	  	end

	   describe "with valid information" do
	      let(:new_name)  { "New Name" }
	      let(:new_address) { "new address" }
	      before do
	        fill_in "Name",             with: new_name
	        fill_in "Address",            with: new_address
	        click_button "Save changes"
      	  end

      	  #it { should have_selector('', text: new_name) }
      	  #it { should have_selector('div.alert.alert-success') }
      	  #it { should have_link('Sign out', href: signout_path) }
          specify { property.reload.name.should  == new_name }
          specify { property.reload.address.should == new_address }
   		end
   	end

   	  describe "profile page" do

	    let(:user) { FactoryGirl.create(:user) }
	    let!(:p1) { FactoryGirl.create(:property, user: user ) }
	    let!(:p2) { FactoryGirl.create(:property, user: user ) }

	    before { visit properties_path(user) }

	    it { should have_selector('h1',    text: user.name) }

	    describe "microposts" do
	      it { should have_content(p1.name) }
	      it { should have_content(p2.name) }
	    end
    end

  end 
end