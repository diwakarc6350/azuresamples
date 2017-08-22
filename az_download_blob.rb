require './azure_storage_helper.rb'

begin
  blob, content = @azure_blob_service.get_blob('testcontainer', 'sample.txt')
  File.open('sample.txt', 'wb') {|f| f.write(content)}
rescue Exception => e
  puts e.message
  puts e.backtrace.inspect
end
