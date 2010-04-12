class Software < ActiveRecord::Base
  belongs_to :workstation
  belongs_to :wmi_property
end
