# config.rb
# unit test makes calls to bioportal api so it needs a valid API key which can 
# be set via ENV variable OP_APIKEY
abort('env var UT_APIKEY is not set. Canceling tests...') unless ENV.include?('UT_APIKEY')

LinkedData::Client.config do |config|
  config.rest_url   = 'https://data.bioontology.org'
  config.apikey     = ENV['UT_APIKEY']
#  config.apikey     = 'xxxxx-xxxxx-xxxxxxxxxx'
  config.links_attr = 'links'
  config.cache      = false
end
