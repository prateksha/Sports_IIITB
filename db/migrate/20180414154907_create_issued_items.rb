class CreateIssuedItems < ActiveRecord::Migration[5.1]
  def change
    create_table :issued_items do |t|
      t.string :Name
      t.string :RollNo
      t.string :Email
      t.string :Equipment
      t.date :IssueDate
      t.date :ReturnDate

      t.timestamps
    end
  end
end
