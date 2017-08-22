require './azure_storage_helper.rb'

begin
  container = @azure_blob_service.create_container("samplecontainer")
  Dir.foreach(Dir.pwd+'/data') do |blob_item|
    next if blob_item == '.' or blob_item == '..'
    content = ::File.open(Dir.pwd+'/data/' + blob_item, 'rb') { |file| file.read }
    puts "Adding... #{blob_item} to #{container.name}"
    @azure_blob_service.create_block_blob(container.name, blob_item, content)
  end
rescue Exception => e
  #binding.pry
  puts e.message
  puts e.backtrace.inspect
end
