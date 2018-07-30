class CreateCalculators < ActiveRecord::Migration[5.2]
  def change
    create_table :calculators do |t|
      t.jsonb :data

      t.timestamps
    end
  end
end
