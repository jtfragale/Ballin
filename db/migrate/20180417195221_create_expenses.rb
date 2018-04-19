class CreateExpenses < ActiveRecord::Migration[5.1]
  def change
    create_table :expenses do |t|
      t.string :category
      t.integer :cost
      t.references :month, foreign_key: true
    end
  end
end
