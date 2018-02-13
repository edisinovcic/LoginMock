class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users, primary_key: :id do |t|
      t.string :firstName, null: false, default: ''
      t.string :lastName, null: false, default: ''
      t.string :email, null: false, default: ''
      t.string :password, null: false, default: ''
      t.timestamps
    end
  end
end
