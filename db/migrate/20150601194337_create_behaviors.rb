class CreateBehaviors < ActiveRecord::Migration
  def change
    create_table   :behaviors do |t|
      t.references :roles
      t.references :stages
      t.text       :description
    end
  end
end
