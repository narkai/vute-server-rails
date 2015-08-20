class CreateVutes < ActiveRecord::Migration
  def change
    create_table :vutes do |t|
      t.string :keyword
      t.references :user, index: true, foreign_key: true, null: false
      t.timestamps null: false
    end
  end
end
