class CreateButterflies < ActiveRecord::Migration
  def change
    create_table :butterflies do |t|
      t.text     :name
    end
  end
end
