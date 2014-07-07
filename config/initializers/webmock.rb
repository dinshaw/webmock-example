if %w(test).include?(Rails.env)
  require 'webmock'
  include WebMock::API
  WebMock.disable_net_connect!(
   allow_localhost: true,
   net_http_connect_on_start: true )
  Dir[Rails.root.join("spec/support/network_stubs/*.rb")].each { |f| require f }
end
