module ActionMailer
  module Sandbox
    class Config
      attr_accessor :sandbox_email

      def initialize
        @sandbox_email = "test@example.com"
      end
    end
  end
end
