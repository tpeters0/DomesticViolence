class CreateButterflies < ActiveRecord::Migration
  def change
    create_table :butterflies do |t|
      t.string :title
      t.string :pic
      t.references :user
      t.timestamps null: false
    end
  end
end
