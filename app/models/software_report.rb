class SoftwareReport < ActiveRecord::Base
  belongs_to :workstation
  belongs_to :wmi_property
end
