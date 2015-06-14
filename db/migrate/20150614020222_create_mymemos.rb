class CreateMymemos < ActiveRecord::Migration
  def change
    create_table :mymemos do |t|
      t.string :title
      t.text :body

      t.timestamps null: false
    end
  end
end
