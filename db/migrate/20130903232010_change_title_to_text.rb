class ChangeTitleToText < ActiveRecord::Migration
  def self.up
    change_column :leys, :titulo, :text, :limit => nil
    change_column :leys, :texto, :text, :limit => nil
  end

  def self.down
    change_column :leys, :titulo, :string
    change_column :leys, :texto, :text, :limit => 255
  end
end
