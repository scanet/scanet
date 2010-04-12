class Alarm < ActiveRecord::Base
  belongs_to :workstation
  belongs_to :wmi_property

  def self.check_hardware(hw_report)
    hardware_report = HardwareReport.find(hw_report)
    hardware = Hardware.find_by_workstation_id_and_wmi_property_id(hardware_report.workstation_id, hardware_report.wmi_property_id)

    if hardware_report.value != hardware.value

      alarm = Alarm.new(
        :workstation_id => hardware.workstation_id,
        :wmi_property_id => hardware.wmi_property_id,
        :original => hardware.value,
        :reported => hardware_report.value,
        :alarm_type => 'hardware'
      )
      alarm.save
      
      workstation = Workstation.find(hardware.workstation_id)
      workstation.update_attribute(:alarm, true)

    end
  end

  def self.check_software(sw_report)
    software_report = SoftwareReport.find(sw_report)
    software = Software.find_by_workstation_id_and_wmi_property_id(software_report.workstation_id, software_report.wmi_property_id)

    if software_report.value != software.value

      alarm = Alarm.new(
        :workstation_id => software.workstation_id,
        :wmi_property_id => software.wmi_property_id,
        :original => software.value,
        :reported => software_report.value,
        :alarm_type => "software"
      )
      alarm.save

      workstation = Workstation.find(software.workstation_id)
      workstation.update_attribute(:alarm, true)

    end
  end

  def self.ignore_alarm(alarm_id)
    alarm = Alarm.find(alarm_id)
    if alarm.type == "hardware"
      hardware = Hardware.find_all_by_workstation_id_and_wmi_property_id(alarm.workstation_id, alarm.wmi_property_id)
      hardware.update_attribute(:value, alarm.reported)
    elsif alarm.type == "software"
      software = Software.find_all_by_workstation_id_and_wmi_property_id(alarm.workstation_id, alarm.wmi_property_id)
      software.update_attribute(:value, alarm.reported)
    end
  end

  def self.ignore_message
    'El valor reportado sera asignado al valor original para esta propiedad en este equipo. Además esta alarma será eliminada. Desea Continuar?'
  end
end
