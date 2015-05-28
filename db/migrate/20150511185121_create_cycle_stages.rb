class CreateCycleStages < ActiveRecord::Migration
  def change
    create_table :cycle_stages do |t|
      t.string :[name
      t.text] :[
      t.string :description
      t.text]] :[

      t.timestamps null: false
    end
  end
end
