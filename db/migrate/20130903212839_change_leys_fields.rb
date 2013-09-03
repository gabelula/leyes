class ChangeLeysFields < ActiveRecord::Migration
  def self.up
    change_column :Leys, :fecha, :datetime
    change_column :Leys, :texto, :text
  end

  def self.down
    change_column :Leys, :fecha, :date
    change_column :Leys, :texto, :string
  end
end
