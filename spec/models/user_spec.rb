require 'spec_helper'


describe User do
  it "must have a name" do
    user = User.new
    user.errors[:name].should be_empty
  end
  
end
