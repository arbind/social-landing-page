PING_INTERVAL = 8*60 # seconds

module BackgroundPing
  def self.start(url)
    ping_uri = URI("#{url}/ping") rescue URI("")
    return unless ping_uri.host

    # Allow time for the server to start up before kicking off the thread
    options = { launch_delay: 8 }
    key = :ping
    interval = PING_INTERVAL
    BackgroundThreads.launch key, interval, options do
      Net::HTTP.get_response(ping_uri)
    end
  end
end

BackgroundPing.start(ENV['APP_URL']) if 'production'.eql? Rails.env