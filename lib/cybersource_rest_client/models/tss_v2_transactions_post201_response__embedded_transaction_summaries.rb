=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class TssV2TransactionsPost201ResponseEmbeddedTransactionSummaries
    # An unique identification number to identify the submitted request. It is also appended to the endpoint of the resource.  On incremental authorizations, this value with be the same as the identification number returned in the original authorization response.  #### PIN debit Returned for all PIN debit services. 
    attr_accessor :id

    # Time of request in UTC. Format: `YYYY-MM-DDThh:mm:ssZ` **Example** `2016-08-11T22:47:57Z` equals August 11, 2016, at 22:47:57 (10:47:57 p.m.). The `T` separates the date and the time. The `Z` indicates UTC.  Returned by authorization service.  #### PIN debit Time when the PIN debit credit, PIN debit purchase or PIN debit reversal was requested.  Returned by PIN debit credit, PIN debit purchase or PIN debit reversal. 
    attr_accessor :submit_time_utc

    # Your CyberSource merchant ID.
    attr_accessor :merchant_id

    attr_accessor :application_information

    attr_accessor :buyer_information

    attr_accessor :client_reference_information

    attr_accessor :consumer_authentication_information

    attr_accessor :device_information

    attr_accessor :fraud_marking_information

    # The object containing the custom data that the merchant defines. 
    attr_accessor :merchant_defined_information

    attr_accessor :merchant_information

    attr_accessor :order_information

    attr_accessor :payment_information

    attr_accessor :processing_information

    attr_accessor :processor_information

    attr_accessor :point_of_sale_information

    attr_accessor :risk_information

    attr_accessor :_links

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'submit_time_utc' => :'submitTimeUtc',
        :'merchant_id' => :'merchantId',
        :'application_information' => :'applicationInformation',
        :'buyer_information' => :'buyerInformation',
        :'client_reference_information' => :'clientReferenceInformation',
        :'consumer_authentication_information' => :'consumerAuthenticationInformation',
        :'device_information' => :'deviceInformation',
        :'fraud_marking_information' => :'fraudMarkingInformation',
        :'merchant_defined_information' => :'merchantDefinedInformation',
        :'merchant_information' => :'merchantInformation',
        :'order_information' => :'orderInformation',
        :'payment_information' => :'paymentInformation',
        :'processing_information' => :'processingInformation',
        :'processor_information' => :'processorInformation',
        :'point_of_sale_information' => :'pointOfSaleInformation',
        :'risk_information' => :'riskInformation',
        :'_links' => :'_links'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'submit_time_utc' => :'String',
        :'merchant_id' => :'String',
        :'application_information' => :'TssV2TransactionsPost201ResponseEmbeddedApplicationInformation',
        :'buyer_information' => :'TssV2TransactionsPost201ResponseEmbeddedBuyerInformation',
        :'client_reference_information' => :'TssV2TransactionsPost201ResponseEmbeddedClientReferenceInformation',
        :'consumer_authentication_information' => :'TssV2TransactionsPost201ResponseEmbeddedConsumerAuthenticationInformation',
        :'device_information' => :'TssV2TransactionsPost201ResponseEmbeddedDeviceInformation',
        :'fraud_marking_information' => :'TssV2TransactionsGet200ResponseFraudMarkingInformation',
        :'merchant_defined_information' => :'Array<Ptsv2paymentsMerchantDefinedInformation>',
        :'merchant_information' => :'TssV2TransactionsPost201ResponseEmbeddedMerchantInformation',
        :'order_information' => :'TssV2TransactionsPost201ResponseEmbeddedOrderInformation',
        :'payment_information' => :'TssV2TransactionsPost201ResponseEmbeddedPaymentInformation',
        :'processing_information' => :'TssV2TransactionsPost201ResponseEmbeddedProcessingInformation',
        :'processor_information' => :'TssV2TransactionsPost201ResponseEmbeddedProcessorInformation',
        :'point_of_sale_information' => :'TssV2TransactionsPost201ResponseEmbeddedPointOfSaleInformation',
        :'risk_information' => :'TssV2TransactionsPost201ResponseEmbeddedRiskInformation',
        :'_links' => :'TssV2TransactionsPost201ResponseEmbeddedLinks'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'submitTimeUtc')
        self.submit_time_utc = attributes[:'submitTimeUtc']
      end

      if attributes.has_key?(:'merchantId')
        self.merchant_id = attributes[:'merchantId']
      end

      if attributes.has_key?(:'applicationInformation')
        self.application_information = attributes[:'applicationInformation']
      end

      if attributes.has_key?(:'buyerInformation')
        self.buyer_information = attributes[:'buyerInformation']
      end

      if attributes.has_key?(:'clientReferenceInformation')
        self.client_reference_information = attributes[:'clientReferenceInformation']
      end

      if attributes.has_key?(:'consumerAuthenticationInformation')
        self.consumer_authentication_information = attributes[:'consumerAuthenticationInformation']
      end

      if attributes.has_key?(:'deviceInformation')
        self.device_information = attributes[:'deviceInformation']
      end

      if attributes.has_key?(:'fraudMarkingInformation')
        self.fraud_marking_information = attributes[:'fraudMarkingInformation']
      end

      if attributes.has_key?(:'merchantDefinedInformation')
        if (value = attributes[:'merchantDefinedInformation']).is_a?(Array)
          self.merchant_defined_information = value
        end
      end

      if attributes.has_key?(:'merchantInformation')
        self.merchant_information = attributes[:'merchantInformation']
      end

      if attributes.has_key?(:'orderInformation')
        self.order_information = attributes[:'orderInformation']
      end

      if attributes.has_key?(:'paymentInformation')
        self.payment_information = attributes[:'paymentInformation']
      end

      if attributes.has_key?(:'processingInformation')
        self.processing_information = attributes[:'processingInformation']
      end

      if attributes.has_key?(:'processorInformation')
        self.processor_information = attributes[:'processorInformation']
      end

      if attributes.has_key?(:'pointOfSaleInformation')
        self.point_of_sale_information = attributes[:'pointOfSaleInformation']
      end

      if attributes.has_key?(:'riskInformation')
        self.risk_information = attributes[:'riskInformation']
      end

      if attributes.has_key?(:'_links')
        self._links = attributes[:'_links']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@id.nil? && @id.to_s.length > 26
        invalid_properties.push('invalid value for "id", the character length must be smaller than or equal to 26.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@id.nil? && @id.to_s.length > 26
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if !id.nil? && id.to_s.length > 26
        fail ArgumentError, 'invalid value for "id", the character length must be smaller than or equal to 26.'
      end

      @id = id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          submit_time_utc == o.submit_time_utc &&
          merchant_id == o.merchant_id &&
          application_information == o.application_information &&
          buyer_information == o.buyer_information &&
          client_reference_information == o.client_reference_information &&
          consumer_authentication_information == o.consumer_authentication_information &&
          device_information == o.device_information &&
          fraud_marking_information == o.fraud_marking_information &&
          merchant_defined_information == o.merchant_defined_information &&
          merchant_information == o.merchant_information &&
          order_information == o.order_information &&
          payment_information == o.payment_information &&
          processing_information == o.processing_information &&
          processor_information == o.processor_information &&
          point_of_sale_information == o.point_of_sale_information &&
          risk_information == o.risk_information &&
          _links == o._links
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, submit_time_utc, merchant_id, application_information, buyer_information, client_reference_information, consumer_authentication_information, device_information, fraud_marking_information, merchant_defined_information, merchant_information, order_information, payment_information, processing_information, processor_information, point_of_sale_information, risk_information, _links].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = CyberSource.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
