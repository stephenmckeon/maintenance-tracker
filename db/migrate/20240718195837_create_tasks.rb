class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.references :category
      t.string :name
      t.text :description
      t.string :interval

      t.timestamps
    end
  end
end
