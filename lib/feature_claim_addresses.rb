require "feature_claim_addresses/version"

module FeatureClaimAddresses
  # This will be executed in the ability class, by defalut, if the Feature is enabled.
  class Default
    def self.permissions
      [
        "can_access_claim_addresses"
      ]
    end
  end
  class FeatureClaimAddressesFeatureDefinition
    include FeatureSystem::Provides
    def permissions
      [
        {
          can: false,
          callback_name: 'cannot_access_claim_addresses',
          name: 'Cannot View The Claim Addresses'
        }
      ]
    end
  end

  module Authorization
    module Permissions

      def can_access_claim_addresses
        can :access_claim_addresses, Address
      end

      def cannot_access_claim_addresses
        cannot :access_claim_addresses, Address
      end

    end
  end
end
require 'feature_claim_addresses/railtie' if defined?(Rails)
