=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for CyberSource::CustomerApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CustomerApi' do
  before do
    # run before each test
    @instance = CyberSource::CustomerApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CustomerApi' do
    it 'should create an instance of CustomerApi' do
      expect(@instance).to be_instance_of(CyberSource::CustomerApi)
    end
  end

  # unit tests for delete_customer
  # Delete a Customer
  # @param customer_token_id The TokenId of a customer.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :profile_id The id of a profile containing user specific TMS configuration.
  # @return [nil]
  describe 'delete_customer test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_customer
  # Retrieve a Customer
  # @param customer_token_id The TokenId of a customer.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :profile_id The id of a profile containing user specific TMS configuration.
  # @return [CustomerPost200Response]
  describe 'get_customer test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for patch_customer
  # Update a Customer
  # @param customer_token_id The TokenId of a customer.
  # @param patch_customer_request 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :profile_id The id of a profile containing user specific TMS configuration.
  # @option opts [String] :if_match Contains an ETag value from a GET request to make the request conditional.
  # @return [CustomerPost200Response]
  describe 'patch_customer test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_customer
  # Create a Customer
  # @param post_customer_request 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :profile_id The id of a profile containing user specific TMS configuration.
  # @return [CustomerPost200Response]
  describe 'post_customer test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end