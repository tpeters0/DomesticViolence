class CreateStages < ActiveRecord::Migration
  def change
    create_table :stages do |t|
      t.text     :stage_name
      t.text     :description
    end
  end
end
