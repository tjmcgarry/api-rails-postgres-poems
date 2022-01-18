require "json"
require "ibm_watson/authenticators"
require "ibm_watson/natural_language_understanding_v1"
include IBMWatson

authenticator = Authenticators::IamAuthenticator.new(
  apikey: "CoIqo7JpvBR_0AY3Mn71IjgiPLN-DMP7B3xkSStmEhoJ"
)

natural_language_understanding = NaturalLanguageUnderstandingV1.new(
  version: "2021-08-01",
  authenticator: authenticator
)
natural_language_understanding.service_url = "https://api.us-south.natural-language-understanding.watson.cloud.ibm.com/instances/45e02af7-479f-4aa9-b0d0-d4fb0ccb022c"

response = natural_language_understanding.analyze(
  html: "I think that the Root of the Wind is Water --
I think that the Root of the Wind is Water -- It would not sound so deep Were it a Firmamental Product -- Airs no Oceans keep -- Mediterranean intonations -- To a Current's Ear -- There is a maritime conviction In the Atmosphere --",
  features: {emotion: {}, sentiment: {}}
)

puts JSON.pretty_generate(response.result)

#through id:5