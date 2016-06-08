require 'rubygems'
require 'twilio-ruby'

account_sid = "AC6e1dfa4ad2bce82fae5d96dff290ce73"
auth_token = "71dc42a789252d8b072009754d5ae03b"

@client = Twilio::REST::Client.new account_sid, auth_token

@client.messages.create(
  from: '+13126255304',
  to: '+18477218402',
  body: 'Hey there! - Jenna'
)

