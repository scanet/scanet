class Ubication < ActiveRecord::Base
  has_many   :workstations

  validates_presence_of     :name, :message => "Debe ingresar un nombre"

  def self.options
   find(:all, :order => "name ASC").collect {|p| [ p.name, p.id ] }
  end
  
end
