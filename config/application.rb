require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module DGUGallary
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    config.time_zone = "Seoul"
  end
end

# <h1>현재시간 출력하는법</h1>
# <% now = Time.zone.now %>
# <%= now.strftime('%Y-%m-%d %H:%M:%S')%>
# <!--출력결과 2018-06-01 22:57:59-->
