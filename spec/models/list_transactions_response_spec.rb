=begin
#Square Connect API

OpenAPI spec version: 2.0
Contact: developers@squareup.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SquareConnect::ListTransactionsResponse
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ListTransactionsResponse' do
  before do
    # run before each test
    @instance = SquareConnect::ListTransactionsResponse.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ListTransactionsResponse' do
    it 'should create an instact of ListTransactionsResponse' do
      expect(@instance).to be_instance_of(SquareConnect::ListTransactionsResponse)
    end
  end
  describe 'test attribute "errors"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "transactions"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "cursor"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

