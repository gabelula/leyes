class ChangeLeyTextoColumn < ActiveRecord::Migration
  def self.up
    remove_column :leys, :texto
    add_column :leys, :texto, :text
  end
end
