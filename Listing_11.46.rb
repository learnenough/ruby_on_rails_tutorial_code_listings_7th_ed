class ApplicationMailer < ActionMailer::Base
  default from: "from@example.com" # <- Make sure it's not this example adddress
  layout "mailer"
end
