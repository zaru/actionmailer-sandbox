require "action_mailer"
require "actionmailer/sandbox/version"
require "actionmailer/sandbox/config"

module ActionMailer
  class Base < AbstractController::Base
    alias :__mail__ :mail
    def mail(headers = {}, &block)
      headers[:to] = ActionMailer::Sandbox.config.sandbox_email.nil? ? headers[:to] : ActionMailer::Sandbox.config.sandbox_email
      __mail__(headers, &block)
    end
  end
end
