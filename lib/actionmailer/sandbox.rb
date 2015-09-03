require 'action_mailer'
require "actionmailer/sandbox/version"

module ActionMailer
  class Base < AbstractController::Base
    alias :__mail__ :mail
    def mail(headers = {}, &block)
      sandbox_email = 'test@example.com'
      headers[:to] = sandbox_email
      __mail__(headers, &block)
    end
  end
end
