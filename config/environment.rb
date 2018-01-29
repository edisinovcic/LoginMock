# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActiveModelSerializers.config.key_transform = :camel_lower
