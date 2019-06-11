=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for CyberSource::SearchTransactionsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SearchTransactionsApi' do
  before do
    # run before each test
    @instance = CyberSource::SearchTransactionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SearchTransactionsApi' do
    it 'should create an instance of SearchTransactionsApi' do
      expect(@instance).to be_instance_of(CyberSource::SearchTransactionsApi)
    end
  end

  # unit tests for create_search
  # Create a search request
  # Create a search request. 
  # @param create_search_request 
  # @param [Hash] opts the optional parameters
  # @return [TssV2TransactionsPost201Response]
  describe 'create_search test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_search
  # Get Search results
  # Include the Search ID in the GET request to retrieve the search results.
  # @param search_id Search ID.
  # @param [Hash] opts the optional parameters
  # @return [TssV2TransactionsPost201Response]
  describe 'get_search test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
