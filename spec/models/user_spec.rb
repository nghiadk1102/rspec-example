require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validation" do
    let(:user) {User.new}
    context "name" do
      it "not presence" do
        user.name = ''
        expect(user).not_to be_valid
      end

      it "too short" do
        user.name = 'a'
        expect(user).not_to be_valid
      end

      it "too long" do
        user.name = 'a'*200
        expect(user).not_to be_valid
      end
    end
  end
end
