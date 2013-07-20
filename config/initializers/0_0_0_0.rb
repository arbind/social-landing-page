ENV["APPLICATION_URL"] ||= "http://0.0.0.0:3000"

module SECRET
end

module LOCAL
end

module LOCAL::TWITTER
  KEY     = '6QOEygXZwne9IXahN0STtQ'
end

module SECRET::TWITTER
  KEY     = ENV["TWITTER_KEY"]
  SECRET  = ENV["TWITTER_SECRET"]
end