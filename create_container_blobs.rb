require './azure_storage_helper.rb'

begin  
  container = @azure_blob_service.create_container("samplecontainer")
rescue Exception => e
  #binding.pry
  puts e.message
  puts e.backtrace.inspect
end
