class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.text     :name
      t.text     :description
    end
  end
end
