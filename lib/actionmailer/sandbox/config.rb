require 'active_support/configurable'
module ActionMailer
  module Sandbox

    def self.configure(&block)
      yield @config ||= ActionMailer::Sandbox::Configuration.new
    end

    def self.config
      @config
    end

    class Configuration
      include ActiveSupport::Configurable
      config_accessor :sandbox_email
    end

    configure do |config|
      config.sandbox_email = "test@example.com"
    end
  end
end
