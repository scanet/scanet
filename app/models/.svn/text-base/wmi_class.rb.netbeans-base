class WmiClass < ActiveRecord::Base
  belongs_to :wmi_namespace
  has_many   :wmi_methods
  has_many   :wmi_properties

  validates_presence_of     :name, :message => "Debe ingresar un nombre"
  validates_presence_of     :alias, :message => "Debe ingresar un nombre alternativo"
  validates_presence_of     :wmi_namespace_id, :message => "Debe existir un WMI Namespace"
  validates_uniqueness_of   :name, :on => :create, :message => "Este nombre ya existe"
  validates_uniqueness_of   :name, :on => :update, :message => "Este nombre ya existe"

  def self.options
   find(:all, :order => "name ASC").collect {|p| [ p.name, p.id ] }
  end

  def self.data_type
    [["Hardware","Hardware"],["Software","Software"]]
  end
end
