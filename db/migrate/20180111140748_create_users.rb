class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users, primary_key: :id do |t|
      t.string :first_name, null: false, default: ''
      t.string :last_name, null: false, default: ''
      t.string :email, null: false, default: ''
      t.string :password, null: false, default: ''
      t.string :username, default: ''
      t.timestamps
    end
  end
end
