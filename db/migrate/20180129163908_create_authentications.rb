class CreateAuthentications < ActiveRecord::Migration[5.1]
  def change
    create_table :authentications, primary_key: :id do |t|
      t.string :username, null: false, default: ''
      t.string :password, null: false, default: ''
      t.timestamps
    end
  end
end
