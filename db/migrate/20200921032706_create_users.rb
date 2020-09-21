class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name, null: false, limit: 50
      t.string :email, null: false, limit: 100
      t.string :password_digest, null: false
      t.string :remember_token
      t.index :email, unique: true
      t.timestamps
    end
  end
end
