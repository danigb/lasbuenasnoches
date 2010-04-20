# Be sure to restart your server when you modify this file

# Uncomment below to force Rails into production mode when you don't control
# web/app server and can't set it the proper way ENV['RAILS_ENV'] ||=
# 'production'

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.3.5' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  config.time_zone = 'UTC'
  
  config.action_controller.session = {
    :session_key => '_lasbuenasnoches_session',
    :secret      => '9df24f159efa4de9d7b3a90855a5e78d88980f92692f557ceb09f106a9a570acf5d93a57add8fdfc93a55d21901f37ba374332c793d705a2a30772d7a0f75be9'
  }

    config.action_controller.page_cache_directory = RAILS_ROOT + "/public/cache/"

end
