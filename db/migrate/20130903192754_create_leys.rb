class CreateLeys < ActiveRecord::Migration
  def change
    create_table :leys do |t|
      t.integer :numero
      t.date :fecha
      t.string :titulo
      t.string :texto
      t.integer :legislatura

      t.timestamps
    end
  end
end
