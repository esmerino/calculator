require 'rails_helper'

RSpec.describe Calculator, type: :model do
  context "create calculator" do
    it {
      expect(Calculator.create(algorithim: "1+2=").result).to eq(3)
    }
  end
end
