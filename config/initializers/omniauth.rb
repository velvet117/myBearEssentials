Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '374173972605348', '051ce658b0a390eb9785c630129fc44e'
end
