class Workstation < ActiveRecord::Base
  has_many :hardware
  has_many :software
  has_many :hardware_reports
  has_many :software_reports
  has_many :alarms
  belongs_to :ubication

  validates_presence_of :name, :message => "- Ingrese el nombre que identifica a este equipo"
  validates_presence_of :ip, :message => "- Ingrese una dirección IP"
  validates_format_of :ip, :with =>  /\A(?:25[0-5]|(?:2[0-4]|1\d|[1-9])?\d)(?:\.(?:25[0-5]|(?:2[0-4]|1\d|[1-9])?\d)){3}\z/
  validates_uniqueness_of :name, :message => "- Ya existe un equipo con este nombre"
  #validates_uniqueness_of :ip, :message => "- Ya existe un equipo con esta dirección IP"

  def self.workstations
   find(:all).collect {|w| [ w.name, w.id ] }
  end
end
