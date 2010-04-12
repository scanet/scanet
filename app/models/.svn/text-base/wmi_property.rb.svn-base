class WmiProperty < ActiveRecord::Base
  belongs_to :wmi_class
  has_many   :hardwares
  has_many   :softwares
  has_many   :hardware_reports
  has_many   :software_reports
  has_many   :alarms

  validates_presence_of     :name, :message => "Debe ingresar un nombre"
  validates_presence_of     :alias, :message => "Debe ingresar un nombre alternativo"
  validates_presence_of     :wmi_class_id, :message => "Debe existir un WMI Class"
end
