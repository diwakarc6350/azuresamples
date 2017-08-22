require './azure_storage_helper.rb'

begin
  containers = @azure_blob_service.list_containers()
  containers.each do |container|
      puts "Container : " + container.name
      blobs = @azure_blob_service.list_blobs(container.name)
      blobs.each do |blob|
        puts "\tBlob : " + blob.name
      end
  end
rescue Exception => e
  puts e.message
  puts e.backtrace.inspect
end
