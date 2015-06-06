class CreateCycles < ActiveRecord::Migration
  def change
    create_table :cycles do |t|
      t.text     :name
    end
  end
end
