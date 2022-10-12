ActionMailer::Base.delivery_method = :smtp

ActionMailer::Base.smtp_settings = {
	:address              => 'smtp.sendgrid.net',
	:port                 => 587,
	:domain               => 'heroku.com',
	:user_name            => 'app279950678@heroku.com',
	:password             => 'iaznxg5z7101',
	:authentication       => 'plain',
	:enable_starttls_auto => true
}