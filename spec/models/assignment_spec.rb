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

    it "has a LEVELS constant" do
      expect(Assignment::LEVELS).to be_present
      expect(Assignment::LEVELS).to include('required')
    end
  end

  describe 'validations' do
    it "has a valid factory" do
      expect(build(:assignment)).to be_valid
    end

    it "requires a link" do
      expect(build(:assignment, link: "")).to be_invalid
    end

    it "requires a title" do
      expect(build(:assignment, title: "")).to be_invalid
    end

    it "requires a level" do
      expect(build(:assignment, level: "")).to be_invalid
    end
  end
end
