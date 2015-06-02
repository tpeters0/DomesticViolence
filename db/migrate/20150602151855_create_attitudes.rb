class CreateAttitudes < ActiveRecord::Migration
  def change
    create_table   :attitudes do |t|
      t.references :roles
      t.references :stages
      t.text       :description
    end
  end
end
