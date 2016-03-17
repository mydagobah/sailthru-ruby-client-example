###                                                                    ###
# A simple example to make a user api call using Sailthru's Ruby library #
###                                                                    ###    

require 'sailthru'

api_key = 'replace-with-your-api-key'
api_secret = 'replace-with-your-api-secret'

sailthru = Sailthru::Client.new(api_key, api_secret)

data = {
    'id'     => 'youruser@example.com',
    'key'    => 'email',
    'fields' => { 'lists' => 1 }
}

# GET /user
response = sailthru.api_get('user', data)

puts response
