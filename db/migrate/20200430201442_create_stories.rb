class CreateStories < ActiveRecord::Migration[5.1]
  def change
    create_table :stories do |t|
      t.string :PPE_type1
      t.string :Amount1
      t.string :Recipient1
      t.string :PPE_type2
      t.string :Amount2
      t.string :Recipient2

      t.timestamps
    end
  end
end
