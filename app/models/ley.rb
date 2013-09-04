class Ley < ActiveRecord::Base
  validates :numero, :titulo, :texto, :presence => :true
  validates :numero, :uniqueness => :true

  searchable do
    text :titulo
    text :texto
    integer :numero
  end
end
