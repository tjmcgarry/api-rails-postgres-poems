require "json"
require "ibm_watson/authenticators"
require "ibm_watson/natural_language_understanding_v1"
include IBMWatson

authenticator = Authenticators::IamAuthenticator.new(
  apikey: "{apikey}"
)

natural_language_understanding = NaturalLanguageUnderstandingV1.new(
  version: "2021-08-01",
  authenticator: authenticator
)
natural_language_understanding.service_url = "{url}"

response = natural_language_understanding.analyze(
  html: "<html><head><title>Fruits</title></head><body><h1>Apples and Oranges</h1><p>I love apples! I don't like oranges.</p></body></html>",
  features: {emotion: {targets: ['apples','oranges']}}
)

puts JSON.pretty_generate(response.result)