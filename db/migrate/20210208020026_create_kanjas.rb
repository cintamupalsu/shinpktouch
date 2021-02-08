class CreateKanjas < ActiveRecord::Migration[6.1]
  def change
    create_table :kanjas do |t|
      t.string :name
      t.string :email
      t.string :barcode

      t.timestamps
    end
  end
end
