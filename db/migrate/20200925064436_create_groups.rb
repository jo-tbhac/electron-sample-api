class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.string :name, null: false, limit: 100
      t.index :name, unique: true
      t.timestamps
    end
  end
end
