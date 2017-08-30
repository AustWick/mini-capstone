class CreatePresidents < ActiveRecord::Migration[5.1]
  def change
    create_table :presidents do |t|
      t.string :first_name
      t.string :last_name
      t.integer :price
      t.string :description
      t.string :termination

      t.timestamps
    end
  end
end
