require "pepipost/version"

require 'openssl'
require 'json'
require 'unirest'

# Helper Files
require 'pepipost/api_helper.rb'
require 'pepipost/api_exception.rb'
require 'pepipost/configuration.rb'
require 'pepipost/pepipost_apiv_10_client.rb'

# Controllers
require 'pepipost/controllers/email_controller.rb'

# Models
require 'pepipost/models/attributes.rb'
require 'pepipost/models/files.rb'
require 'pepipost/models/emailv_1.rb'
require 'pepipost/models/email_details.rb'
require 'pepipost/models/settings.rb'

