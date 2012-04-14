  OmniAuth.config.test_mode = true

  OmniAuth.config.mock_auth[:facebook] = {
    "provider"  => "facebook",
    "uid"       => '12345',
    "info" => {
      "email" => "email@email.com",
      "first_name" => "John",
      "last_name"  => "Doe",
      "name"       => "John Doe"
      # any other attributes you want to stub out for testing
    }
  }

Before('@omniauth_test_failure') do
  OmniAuth.config.test_mode = true
  [:default, :facebook, :twitter].each do |service|
    OmniAuth.config.mock_auth[service] = :invalid_credentials
    # or whatever status code you want to stub
  end
end

#After('@omniauth_test_failure') do
#  OmniAuth.config.test_mode = false
#end
