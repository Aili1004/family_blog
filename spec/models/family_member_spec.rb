require 'rails_helper'

RSpec.describe FamilyMember, type: :model do
  describe "with valid attributes" do
    let(:family_member) {FamilyMember.create(first_name: "Sample", last_name: "Example", dob: "1991-01-01", email: "sample@example.com")}
    it "family member is created" do
      expect(family_member).to_not be_nil
    end
  end

  describe "first name is not provided" do
    let(:family_member) {FamilyMember.create(first_name: nil)}
    it "family member is not created" do
      expect(family_member.valid?).to eql false
    end
  end

 describe "last name is not provided" do
   let(:family_member) {FamilyMember.create(last_name: nil)}
   it "family member is not created" do
     expect(family_member.valid?).to eql false
   end
 end

 describe "date of birth is not provided" do
   let(:family_member) {FamilyMember.create(dob: nil)}
   it "family member is not created" do
     expect(family_member.valid?).to eql false
   end
 end

 describe "email is not provided" do
   let(:family_member) {FamilyMember.create(email: nil)}
   it "family member is not created" do
     expect(family_member.valid?).to eql false
   end
 end
end
