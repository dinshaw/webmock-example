def now; @now ||= Time.zone.now end

def pause
  puts 'Pausing...'
  STDIN.gets
end

def network_stub_response(filename)
  File.new Rails.root.join('spec/support/network_stubs/responses', filename)
end
