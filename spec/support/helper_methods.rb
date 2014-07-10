def network_stub_response(filename)
  File.new Rails.root.join('spec/support/network_stubs/responses', filename)
end

def pause
  puts 'Pausing...'
  STDIN.gets
end

