require "azure"
require "pry-byebug"
require 'awesome_print'
require "./azure_access.rb"

# I have not included this file in the repo it has my personal access information
# for Azure storage access you basically need a storage account and storage_access_key

# Azure.config.storage_account_name = "some_account_name"
# Azure.config.storage_access_key = "some_access_key"

@azure_blob_service = Azure::Blob::BlobService.new
