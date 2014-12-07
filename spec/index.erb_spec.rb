require 'spec_helper'

describe "GG" do

  target = File.read("views/index.erb")

	it "should see Username on page" do

		expect(target).to match "Username"

	end

	it "should not see xxUsername on page" do

		expect(target).not_to match "xxUsername"
	end	

end		
