class ApplicationMailer < ActionMailer::Base
	require 'sendgrid-ruby'
 	default from: 'no-reply@monsite.fr'
  layout 'mailer'
end
