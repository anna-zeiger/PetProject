require 'factory_bot_rails'
RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
  FactoryBot.definition_file_paths = [File.expand_path('../factories', __FILE__)]
end

FactoryBot.create do
    Cusine :cusine do
      name 'Italian'
  end

  Restaurant :restaurant do
    name 'Landver'
    maxDeliveryTime '40'
    accepts10bis True
    address 'Azrieli'
    cusine :cusine
  end
end