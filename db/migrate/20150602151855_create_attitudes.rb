class CreateAttitudes < ActiveRecord::Migration
  def change
    create_table   :attitudes do |t|
      t.references :role
      t.references :stage
      t.text       :description
    end
  end
end
