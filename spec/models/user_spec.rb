module Api
  module V1

    RSpec.describe User do
      it { is_expected.to have_attribute :name }

      it "validates presence of name" do
        subject.name = nil
        subject.valid?
        expect(subject.errors[:name]).to include "can't be blank"
      end

    end

  end
end
