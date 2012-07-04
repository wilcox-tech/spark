class Settings < RailsSettings::CachedSettings
  attr_accessible :var, :value
end
