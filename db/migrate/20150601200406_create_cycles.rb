class CreateCycles < ActiveRecord::Migration
  def change
    create_table :cycles do |t|
      t.text     :cycle_name
    end
  end
end
