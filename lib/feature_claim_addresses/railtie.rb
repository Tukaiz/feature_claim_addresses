module FeatureClaimAddresses
  class Railtie < Rails::Railtie

    initializer "my_railtie.configure_rails_initialization" do |app|
      FeatureBase.register(app, FeatureClaimAddresses)
      FeatureBase.register_autoload_path(app, "feature_claim_addresses")
    end

    config.after_initialize do
      FeatureBase.inject_feature_record("Claim Addresses",
        "FeatureClaimAddresses",
        "Enables a ability to assign addresses to claims."
      )
      FeatureBase.inject_permission_records(
        FeatureClaimAddresses,
        FeatureClaimAddressesFeatureDefinition.new.permissions
      )
    end

  end
end
