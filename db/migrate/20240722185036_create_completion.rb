class CreateCompletion < ActiveRecord::Migration[7.1]
  def change
    create_table :completions do |t|
      t.references :task
      t.string :note

      t.timestamps
    end
  end
end
