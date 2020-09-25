class User < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |u|
      u.string :name
      u.string :password
      u.integer :nausea
      u.integer :happiness
      u.integer :tickets
      u.integer :height
    end
  end
end
