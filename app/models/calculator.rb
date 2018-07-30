class Calculator < ApplicationRecord
  jsonb_accessor :data,
  algorithim: :string,
  result: [:decimal]


  before_create do
    self.result = Operator.new(algorithim).calculator if result.blank?
  end
end