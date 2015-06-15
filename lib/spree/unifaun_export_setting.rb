module Spree
  class UnifaunExportSetting < Preferences::Configuration
    preference :package_weight, :integer, default: 0
    preference :sender_quick_id, :integer, default: 1
    preference :contents, :string, default: "Clothing"
  end
end
