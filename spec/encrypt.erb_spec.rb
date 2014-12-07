require 'spec_helper'

describe "GG" do

  target = File.read("views/encrypt.erb")

	it "should see Encrypted Password on page" do

		expect(target).to match "Encrypted Password"

	end

	
end		
