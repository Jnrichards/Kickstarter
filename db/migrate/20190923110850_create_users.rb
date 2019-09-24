class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name

      t.timestamps
    end
  end

  def down
    remove_columns :users do |t|
      t.string :password
  end
end
