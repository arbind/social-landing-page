Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, SECRET::TWITTER::KEY, SECRET::TWITTER::SECRET
end