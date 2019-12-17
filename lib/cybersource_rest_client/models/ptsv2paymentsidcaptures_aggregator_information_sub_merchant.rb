=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class Ptsv2paymentsidcapturesAggregatorInformationSubMerchant
    # Sub-merchant’s business name.  #### American Express Direct The maximum length of the sub-merchant name depends on the length of the aggregator name. The combined length for both values must not exceed 36 characters.  #### CyberSource through VisaNet With American Express, the maximum length of the sub-merchant name depends on the length of the aggregator name. The combined length for both values must not exceed 36 characters. The value for this field does not map to the TC 33 capture file5.  #### FDC Compass This value must consist of uppercase characters.  #### FDC Nashville Global With Mastercard, the maximum length of the sub-merchant name depends on the length of the aggregator name: - If aggregator name length is 1 through 3, maximum sub-merchant name length is 21. - If aggregator name length is 4 through 7, maximum sub-merchant name length is 17. - If aggregator name length is 8 through 12, maximum sub-merchant name length is 12. 
    attr_accessor :name

    # First line of the sub-merchant’s street address.  For processor-specific details, see `submerchant_street` field description in [Credit Card Services Using the SCMP API.](https://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html/wwhelp/wwhimpl/js/html/wwhelp.htm)  #### CyberSource through VisaNet The value for this field does not map to the TC 33 capture file5.  #### FDC Compass This value must consist of uppercase characters. 
    attr_accessor :address1

    # Sub-merchant’s city.  For processor-specific details, see `submerchant_city` request field description in [Credit Card Services Using the SCMP API.](https://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html/wwhelp/wwhimpl/js/html/wwhelp.htm)  #### CyberSource through VisaNet The value for this field does not map to the TC 33 capture file5.  #### FDC Compass This value must consist of uppercase characters. 
    attr_accessor :locality

    # Sub-merchant’s state or province.  For possible values and also aggregator support, see `submerchant_state` request field description in [Credit Card Services Using the SCMP API.](https://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html/wwhelp/wwhimpl/js/html/wwhelp.htm)  #### CyberSource through VisaNet The value for this field does not map to the TC 33 capture file5.  #### FDC Compass This value must consist of uppercase characters. 
    attr_accessor :administrative_area

    # Partial postal code for the sub-merchant’s address.  For processor-specific details, see `submerchant_postal_code` request field description in [Credit Card Services Using the SCMP API.](https://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html/wwhelp/wwhimpl/js/html/wwhelp.htm)  #### CyberSource through VisaNet The value for this field does not map to the TC 33 capture file5.  #### FDC Compass This value must consist of uppercase characters. 
    attr_accessor :postal_code

    # Sub-merchant’s country. Use the two-character ISO Standard Country Codes.  #### CyberSource through VisaNet The value for this field does not map to the TC 33 capture file.  #### FDC Compass This value must consist of uppercase characters.  For details, see the `submerchant_country` request-level field description in [Credit Card Services Using the SCMP API.](https://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html/wwhelp/wwhimpl/js/html/wwhelp.htm) 
    attr_accessor :country

    # Sub-merchant’s email address.  **Maximum length for processors**   - American Express Direct: 40  - CyberSource through VisaNet: 40  - FDC Compass: 40  - FDC Nashville Global: 19  #### CyberSource through VisaNet With American Express, the value for this field corresponds to the following data in the TC 33 capture file: - Record: CP01 TCRB - Position: 25-64 - Field: American Express Seller E-mail Address  **Note** The TC 33 Capture file contains information about the purchases and refunds that a merchant submits to CyberSource. CyberSource through VisaNet creates the TC 33 Capture file at the end of the day and sends it to the merchant’s acquirer, who uses this information to facilitate end-of-day clearing processing with payment card companies. 
    attr_accessor :email

    # Sub-merchant’s telephone number.  **Maximum length for procesors**   - American Express Direct: 20  - CyberSource through VisaNet: 20  - FDC Compass: 13  - FDC Nashville Global: 10  #### CyberSource through VisaNet With American Express, the value for this field corresponds to the following data in the TC 33 capture file5: - Record: CP01 TCRB - Position: 5-24 - Field: American Express Seller Telephone Number  **FDC Compass**\\ This value must consist of uppercase characters. Use one of these recommended formats:\\ `NNN-NNN-NNNN`\\ `NNN-AAAAAAA` 
    attr_accessor :phone_number

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'address1' => :'address1',
        :'locality' => :'locality',
        :'administrative_area' => :'administrativeArea',
        :'postal_code' => :'postalCode',
        :'country' => :'country',
        :'email' => :'email',
        :'phone_number' => :'phoneNumber'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'name' => :'String',
        :'address1' => :'String',
        :'locality' => :'String',
        :'administrative_area' => :'String',
        :'postal_code' => :'String',
        :'country' => :'String',
        :'email' => :'String',
        :'phone_number' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'address1')
        self.address1 = attributes[:'address1']
      end

      if attributes.has_key?(:'locality')
        self.locality = attributes[:'locality']
      end

      if attributes.has_key?(:'administrativeArea')
        self.administrative_area = attributes[:'administrativeArea']
      end

      if attributes.has_key?(:'postalCode')
        self.postal_code = attributes[:'postalCode']
      end

      if attributes.has_key?(:'country')
        self.country = attributes[:'country']
      end

      if attributes.has_key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.has_key?(:'phoneNumber')
        self.phone_number = attributes[:'phoneNumber']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@name.nil? && @name.to_s.length > 37
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 37.')
      end

      if !@address1.nil? && @address1.to_s.length > 38
        invalid_properties.push('invalid value for "address1", the character length must be smaller than or equal to 38.')
      end

      if !@locality.nil? && @locality.to_s.length > 21
        invalid_properties.push('invalid value for "locality", the character length must be smaller than or equal to 21.')
      end

      if !@administrative_area.nil? && @administrative_area.to_s.length > 3
        invalid_properties.push('invalid value for "administrative_area", the character length must be smaller than or equal to 3.')
      end

      if !@postal_code.nil? && @postal_code.to_s.length > 15
        invalid_properties.push('invalid value for "postal_code", the character length must be smaller than or equal to 15.')
      end

      if !@country.nil? && @country.to_s.length > 3
        invalid_properties.push('invalid value for "country", the character length must be smaller than or equal to 3.')
      end

      if !@email.nil? && @email.to_s.length > 40
        invalid_properties.push('invalid value for "email", the character length must be smaller than or equal to 40.')
      end

      if !@phone_number.nil? && @phone_number.to_s.length > 20
        invalid_properties.push('invalid value for "phone_number", the character length must be smaller than or equal to 20.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@name.nil? && @name.to_s.length > 37
      return false if !@address1.nil? && @address1.to_s.length > 38
      return false if !@locality.nil? && @locality.to_s.length > 21
      return false if !@administrative_area.nil? && @administrative_area.to_s.length > 3
      return false if !@postal_code.nil? && @postal_code.to_s.length > 15
      return false if !@country.nil? && @country.to_s.length > 3
      return false if !@email.nil? && @email.to_s.length > 40
      return false if !@phone_number.nil? && @phone_number.to_s.length > 20
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if !name.nil? && name.to_s.length > 37
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 37.'
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] address1 Value to be assigned
    def address1=(address1)
      if !address1.nil? && address1.to_s.length > 38
        fail ArgumentError, 'invalid value for "address1", the character length must be smaller than or equal to 38.'
      end

      @address1 = address1
    end

    # Custom attribute writer method with validation
    # @param [Object] locality Value to be assigned
    def locality=(locality)
      if !locality.nil? && locality.to_s.length > 21
        fail ArgumentError, 'invalid value for "locality", the character length must be smaller than or equal to 21.'
      end

      @locality = locality
    end

    # Custom attribute writer method with validation
    # @param [Object] administrative_area Value to be assigned
    def administrative_area=(administrative_area)
      if !administrative_area.nil? && administrative_area.to_s.length > 3
        fail ArgumentError, 'invalid value for "administrative_area", the character length must be smaller than or equal to 3.'
      end

      @administrative_area = administrative_area
    end

    # Custom attribute writer method with validation
    # @param [Object] postal_code Value to be assigned
    def postal_code=(postal_code)
      if !postal_code.nil? && postal_code.to_s.length > 15
        fail ArgumentError, 'invalid value for "postal_code", the character length must be smaller than or equal to 15.'
      end

      @postal_code = postal_code
    end

    # Custom attribute writer method with validation
    # @param [Object] country Value to be assigned
    def country=(country)
      if !country.nil? && country.to_s.length > 3
        fail ArgumentError, 'invalid value for "country", the character length must be smaller than or equal to 3.'
      end

      @country = country
    end

    # Custom attribute writer method with validation
    # @param [Object] email Value to be assigned
    def email=(email)
      if !email.nil? && email.to_s.length > 40
        fail ArgumentError, 'invalid value for "email", the character length must be smaller than or equal to 40.'
      end

      @email = email
    end

    # Custom attribute writer method with validation
    # @param [Object] phone_number Value to be assigned
    def phone_number=(phone_number)
      if !phone_number.nil? && phone_number.to_s.length > 20
        fail ArgumentError, 'invalid value for "phone_number", the character length must be smaller than or equal to 20.'
      end

      @phone_number = phone_number
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          address1 == o.address1 &&
          locality == o.locality &&
          administrative_area == o.administrative_area &&
          postal_code == o.postal_code &&
          country == o.country &&
          email == o.email &&
          phone_number == o.phone_number
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [name, address1, locality, administrative_area, postal_code, country, email, phone_number].hash
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
