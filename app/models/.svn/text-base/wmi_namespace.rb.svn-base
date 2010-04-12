class WmiNamespace < ActiveRecord::Base
  has_many :wmi_classes
  has_many :wmi_events

  validates_presence_of     :name, :message => "Debe ingresar un nombre"
  validates_presence_of     :alias, :message => "Debe ingresar un nombre alternativo"
  validates_uniqueness_of   :name, :on => :create, :message => "Este nombre ya existe"
  validates_uniqueness_of   :name, :on => :update, :message => "Este nombre ya existe"

  def self.options
   find(:all, :order => "name ASC").collect {|p| [ p.name, p.id ] }
  end
end
