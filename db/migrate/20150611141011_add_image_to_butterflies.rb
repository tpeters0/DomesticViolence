class AddImageToButterflies < ActiveRecord::Migration
  def change
    add_column :butterflies, :image, :string
  end
end
