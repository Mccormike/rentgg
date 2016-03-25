class ApplicationMailer < ActionMailer::Base
  default from: "noreply@rentgg.herokuapp.com"
  layout 'mailer'
end
