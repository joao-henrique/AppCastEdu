# Rails.application.config.middleware.use OmniAuth::Builder do
#   provider :facebook, ENV['1027162853990155'], ENV['ab0c5efe9cae74ecfc47319dd220062a'],
#            :scope => 'email,user_birthday,read_stream', :display => 'popup'
# end

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1027162853990155', 'ab0c5efe9cae74ecfc47319dd220062a'
end
