class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
            t.text :username
            t.text :password
            t.references :post, index: true, foreign_key: true
            t.timestamps null: false
    end
  end
end
