require 'rails_helper'

RSpec.describe Operator do
  describe 'additon' do
    let(:result) { Operator.new("10+1=").calculator }

    it { expect(result).to eq(11) }
  end

  describe 'multiplication' do
    let(:result) { Operator.new("10*1=").calculator }

    it { expect(result).to eq(10) }
  end

  describe 'subtraction' do
    let(:result) { Operator.new("10-1=").calculator }

    it { expect(result).to eq(9) }
  end

  describe 'division' do
    let(:result) { Operator.new("10/1").calculator }

    it { expect(result).to eq(10) }
  end
end