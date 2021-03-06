class CreateParts < ActiveRecord::Migration
  def self.up
    create_table :parts do |t|
      t.integer :car_id, :null => false, :options =>
        "CONSTRAINT fk_part_cars REFERENCES cars(id)"
      t.string :title
      t.boolean :offstock
      t.decimal :retail_cost, :precision => 8, :scale => 2, :default => 0
      t.decimal :final_cost, :precision => 8, :scale => 2, :default => 0

      t.timestamps
    end
  end

  def self.down
    drop_table :parts
  end
end
