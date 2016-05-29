# Rails.application.config.middleware.use OmniAuth::Builder do
#   provider :facebook, ENV['1027162853990155'], ENV['ab0c5efe9cae74ecfc47319dd220062a'],
#            :scope => 'email,user_birthday,read_stream', :display => 'popup'
# end

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1027162853990155', 'ab0c5efe9cae74ecfc47319dd220062a'
  provider :github, 'bbe1ff4c799967ab3eda', '1cd67e7063b849b5772097a8fde00d7819224478'
  provider :google_oauth2, '588241135465-32lka6mboc01bujmg0fijv2hre7uu8q9.apps.googleusercontent.com', 'c0J4G22-H6EM2kgDoXeoKMTc'
end
