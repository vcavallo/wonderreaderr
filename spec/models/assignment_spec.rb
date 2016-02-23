require 'rails_helper'

RSpec.describe Assignment, type: :model do
  describe "attributes" do
    before(:each) do
      @assignment = build(:assignment)
    end

    it "has a title" do
      expect(@assignment).to respond_to(:title)
    end

    it "has a link" do
      expect(@assignment).to respond_to(:link)
    end

    it "has an accepted status" do
      expect(@assignment).to respond_to(:accepted)
    end

    it "has a level" do
      expect(@assignment).to respond_to(:level)
    end
  end
end
