require './azure_storage_helper.rb'

begin
  #binding.pry
  puts @azure_blob_service.get_container_properties('testcontainer').to_yaml
  puts @azure_blob_service.get_container_acl('testcontainer').to_yaml
rescue Exception => e
  puts e.message
  puts e.backtrace.inspect
end
