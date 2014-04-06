version "1"

info do
  title "Slack"
  description "Slack webhooks"
  contact "me@sourcebender.com"
  service_provider "slack"
end

webhook :on_message do
  summary "Outgoing WebHook"
  notes "Called on messages sent to Slack"

  method :post

  parameter :token
  parameter :team_id
  parameter :channel_id
  parameter :channel_name
  parameter :timestamp
  parameter :user_id
  parameter :user_name
  parameter :text

  response_body ''
end
