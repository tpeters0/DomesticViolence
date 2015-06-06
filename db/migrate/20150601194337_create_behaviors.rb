class CreateBehaviors < ActiveRecord::Migration
  def change
    create_table   :behaviors do |t|
      t.references :role
      t.references :stage
      t.text       :description
    end
  end
end
