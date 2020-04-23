class CreateManagers < ActiveRecord::Migration[6.0]
  def change
    create_table :managers do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.references :job, null: false, foreign_key: true

      t.timestamps
    end
  end
end
