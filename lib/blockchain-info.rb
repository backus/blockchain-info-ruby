require "httparty"

Dir[File.dirname(__FILE__) + '/blockchain-info/*.rb'].each do |file|
  require file
end