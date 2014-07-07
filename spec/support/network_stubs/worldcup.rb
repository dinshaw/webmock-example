require_relative '../helper_methods'

def base_url
  Regexp.new 'worldcup.sfg.io'
end

stub_request(:get, /#{base_url}\/matches\/today/).
  to_return(body: network_stub_response('worldcup/today.json'))

stub_request(:get, /#{base_url}\/matches\/tomorrow/).
  to_return(body: network_stub_response('worldcup/tomorrow.json'))
