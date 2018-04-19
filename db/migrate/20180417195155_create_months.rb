class CreateMonths < ActiveRecord::Migration[5.1]
  def change
    create_table :months do |t|
      t.string :name
      t.integer :total
      t.references :user, foreign_key: true
    end
  end
end
