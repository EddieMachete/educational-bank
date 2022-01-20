class CreateBankMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :bank_members do |t|
      t.string :firstName
      t.string :lastName
      t.references :bank, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
