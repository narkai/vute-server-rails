module Api
  module V1

    RSpec.describe VuteResource do
      let :creatable_fields do
        [:keyword, :user]
      end

      let :fetchable_fields do
        [:id, :keyword, :created_at, :updated_at, :user]
      end

      subject do
        described_class.new(Vute.new)
      end

      it "has the correct set of creatable fields" do
        expect(described_class.creatable_fields(nil).sort).to eq creatable_fields.sort
      end

      it "has the correct set of updatable fields" do
        expect(described_class.updatable_fields(nil).sort).to eq creatable_fields.sort
      end

      it "has the correct set of fetchable fields" do
        expect(subject.fetchable_fields.sort).to eq fetchable_fields.sort
      end
    end

  end
end
