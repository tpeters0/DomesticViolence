class RemoveBackgroundColorFromButterflies < ActiveRecord::Migration
  def change
    remove_column :butterflies, :backgroundColor, :text
  end
end
