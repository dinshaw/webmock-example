require_relative '../helper_methods'

BASE_URL = /worldcup\.sfg\.io/

stub_request(:any, /#{BASE_URL}\/matches\/today/).
  to_return(body: network_stub_response('worldcup/today.json'))

stub_request(:any, /#{BASE_URL}\/matches\/tomorrow/).
  to_return(body: network_stub_response('worldcup/tomorrow.json'))
