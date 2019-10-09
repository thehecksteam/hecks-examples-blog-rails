require 'hecks-adapters/dynamodb'
# require 'hecks/active_model'

Domain = HecksApp::ApplicationPort
Domain.config do
  domain  Blog
  adapter :Dynamodb
end
Hecks::ActiveModel.decorate