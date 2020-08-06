=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class Ptsv2creditsProcessingInformation
    # Type of transaction. Some payment card companies use this information when determining discount rates.  #### Used by **Authorization** Required payer authentication transactions; otherwise, optional. **Credit** Required for standalone credits on Chase Paymentech solutions; otherwise, optional. Only `internet`, `moto`, `recurring`, and `recurring_internet` are valid values.  #### Ingenico ePayments When you omit this field for Ingenico ePayments, the processor uses the default transaction type they have on file for you instead of the default value (listed in Appendix I, \"Commerce Indicators,\" on page 441.)  #### Payer Authentication Transactions For the possible values and requirements, see \"Payer Authentication,\" page 195.  #### Other Types of Transactions See Appendix I, \"Commerce Indicators,\" on page 441.  #### Card Present You must set this field to `retail`. This field is required for a card-present transaction. 
    attr_accessor :commerce_indicator

    # Value that identifies the processor/acquirer to use for the transaction. This value is supported only for **CyberSource through VisaNet**.  Contact CyberSource Customer Support to get the value for this field. 
    attr_accessor :processor_id

    # Type of digital payment solution for the transaction. Possible Values:   - `visacheckout`: Visa Checkout. This value is required for Visa Checkout transactions. For details, see `payment_solution` field description in [Visa Checkout Using the SCMP API.](https://apps.cybersource.com/library/documentation/dev_guides/VCO_SCMP_API/html/)  - `001`: Apple Pay.  - `004`: Cybersource In-App Solution.  - `005`: Masterpass. This value is required for Masterpass transactions on OmniPay Direct. For details, see \"Masterpass\" in the [Credit Card Services Using the SCMP API Guide.](https://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html/)  - `006`: Android Pay.  - `007`: Chase Pay.  - `008`: Samsung Pay.  - `012`: Google Pay. 
    attr_accessor :payment_solution

    # Please check with Cybersource customer support to see if your merchant account is configured correctly so you can include this field in your request. * For Payouts: max length for FDCCompass is String (22). 
    attr_accessor :reconciliation_id

    # Value that links the current authorization request to the original authorization request. Set this value to the ID that was returned in the reply message from the original authorization request.  This value is used for:  - Partial authorizations - Split shipments  For details, see `link_to_request` field description in [Credit Card Services Using the SCMP API.](https://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html/) 
    attr_accessor :link_id

    # Attribute that lets you define custom grouping for your processor reports. This field is supported only for **Worldpay VAP**.  For details, see `report_group` field description in [Credit Card Services Using the SCMP API.](https://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html/) 
    attr_accessor :report_group

    # Identifier for the **Visa Checkout** order. Visa Checkout provides a unique order ID for every transaction in the Visa Checkout **callID** field. 
    attr_accessor :visa_checkout_id

    # Set this field to 3 to indicate that the request includes Level III data.
    attr_accessor :purchase_level

    # Indicates that the transaction includes industry-specific data.  Possible Values: - `airline` - `restaurant` - `lodging` - `auto_rental` - `transit` - `healthcare_medical` - `healthcare_transit` - `transit`  #### Card Present, Airlines and Auto Rental You must set this field to `airline` in order for airline data to be sent to the processor. For example, if this field is not set to `airline` or is not included in the request, no airline data is sent to the processor.  You must set this field to `restaurant` in order for restaurant data to be sent to the processor. When this field is not set to `restaurant` or is not included in the request, no restaurant data is sent to the processor.  You must set this field to `auto_rental` in order for auto rental data to be sent to the processor. For example, if this field is not set to `auto_rental` or is not included in the request, no auto rental data is sent to the processor.  Restaurant data is supported only on CyberSource through VisaNet. 
    attr_accessor :industry_data_type

    # This field carries the wallet type in authorization requests and credit requests. Possible value are: - `101`: Masterpass remote payment. The customer created the wallet by manually interacting with a customer-controlled device such as a computer, tablet, or phone. This value is supported only for Masterpass transactions on Chase Paymentech Solutions and CyberSource through VisaNet. - `102`: Masterpass remote near field communication (NFC) payment. The customer created the wallet by tapping a PayPass card or customer-controlled device at a contactless card reader. This value is supported only for card-present Masterpass transactions on CyberSource through VisaNet. - `103`: Masterpass Apple Pay payment. The payment was made with a combination of Masterpass and Apple Pay. This value is supported only for Masterpass Apple Pay transactions on CyberSource through VisaNet. - `216`: Masterpass Google Pay payment. The payment was made with a combination of Masterpass and Google Pay. This value is supported only for Masterpass Google Pay transactions on CyberSource through VisaNet. - `217`: Masterpass Samsung Pay payment. The payment was made with a combination of Masterpass and Samsung Pay. This value is supported only for Masterpass Samsung Pay transactions on CyberSource through VisaNet. - `SDW`: Staged digital wallet. An issuer or operator created the wallet. This value is supported only for Masterpass transactions on Chase Paymentech Solutions. - `VCIND`: Visa Checkout payment. This value is supported only on CyberSource through VisaNet, FDC Compass, FDC Nashville Global, FDI Australia, and TSYS Acquiring Solutions. See Getting Started with Visa Checkout. For Visa Checkout transactions, the way CyberSource processes the value for this field depends on the processor. See the Visa Checkout section below. For all other values, this field is a passthrough; therefore, CyberSource does not verify the value or modify it in any way before sending it to the processor. Masterpass (101, 102, 103, 216, and 217): The Masterpass platform generates the wallet type value and passes it to you along with the customer’s checkout information.  Visa Checkout: This field is optional for Visa Checkout authorizations on FDI Australia. For all other processors, this field is required for Visa Checkout authorizations. For Visa Checkout transactions on the following processors, CyberSource sends the value that the processor expects for this field:FDC Compass,FDC Nashville Global,FDI Australia,TSYS Acquiring Solutions For all other processors, this field is a passthrough; therefore, CyberSource does not verify the value or modify it in any way before sending it to the processor. For incremental authorizations, this field is supported only for Mastercard and the supported values are 101 and 102. Payment card companies can introduce new values without notice. Your order management system should be able to process new values without problems.  CyberSource through VisaNet When the value for this field is 101, 102, 103, 216, or 217, it corresponds to the following data in the TC 33 capture file5: Record: CP01 TCR6, Position: 88-90,  Field: Mastercard Wallet Identifier. When the value for this field is VCIND, it corresponds to the following data in the TC 33 capture file5: Record: CP01 TCR8, Position: 72-76, Field: Agent Unique ID. 
    attr_accessor :wallet_type

    # Supplementary domestic transaction information provided by the acquirer for National Net Settlement Service (NNSS) transactions. NNSS is a settlement service that Visa provides. For transactions on CyberSource through VisaNet in countries that subscribe to NNSS: VisaNet clears transactions; VisaNet transfers funds to the acquirer after deducting processing fees and interchange fees. VisaNet settles transactions in the local pricing currency through a local financial institution. This field is supported only on CyberSource through VisaNet for domestic data in Colombia 
    attr_accessor :national_net_domestic_data

    # On PIN Debit Gateways: This U.S.-only field is optionally used by  participants (merchants and acquirers) to specify the network access priority. VisaNet checks to determine if there are issuer routing preferences for any of the networks specified by the sharing group code. If an issuer preference exists for one of the specified debit networks, VisaNet makes a routing selection based on the issuer’s preference. If an issuer preference exists for more than one of the specified debit networks, or if no issuer preference exists, VisaNet makes a selection based on the acquirer’s routing priorities.  #### PIN debit Priority order of the networks through which he transaction will be routed. Set this value to a series of one-character network codes in your preferred order. This is a list of the network codes:  | Network | Code | | --- | --- | | Accel | E | | AFFN | U | | Alaska Option | 3 | | CU24 | C | | Interlink | G | | Maestro | 8 | | NETS | P | | NYCE | F | | Pulse | H | | Shazam | 7 | | Star | M | | Visa | V |  For example, if the Star network is your first preference and Pulse is your second preference, set this field to a value of `MH`.  When you do not include this value in your PIN debit request, the list of network codes from your account is used. **Note** This field is supported only for businesses located in the U.S.  Optional field for PIN debit credit or PIN debit purchase. 
    attr_accessor :network_routing_order

    attr_accessor :recurring_options

    attr_accessor :bank_transfer_options

    attr_accessor :purchase_options

    attr_accessor :electronic_benefits_transfer

    attr_accessor :loan_options

    attr_accessor :japan_payment_options

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'commerce_indicator' => :'commerceIndicator',
        :'processor_id' => :'processorId',
        :'payment_solution' => :'paymentSolution',
        :'reconciliation_id' => :'reconciliationId',
        :'link_id' => :'linkId',
        :'report_group' => :'reportGroup',
        :'visa_checkout_id' => :'visaCheckoutId',
        :'purchase_level' => :'purchaseLevel',
        :'industry_data_type' => :'industryDataType',
        :'wallet_type' => :'walletType',
        :'national_net_domestic_data' => :'nationalNetDomesticData',
        :'network_routing_order' => :'networkRoutingOrder',
        :'recurring_options' => :'recurringOptions',
        :'bank_transfer_options' => :'bankTransferOptions',
        :'purchase_options' => :'purchaseOptions',
        :'electronic_benefits_transfer' => :'electronicBenefitsTransfer',
        :'loan_options' => :'loanOptions',
        :'japan_payment_options' => :'japanPaymentOptions'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'commerce_indicator' => :'String',
        :'processor_id' => :'String',
        :'payment_solution' => :'String',
        :'reconciliation_id' => :'String',
        :'link_id' => :'String',
        :'report_group' => :'String',
        :'visa_checkout_id' => :'String',
        :'purchase_level' => :'String',
        :'industry_data_type' => :'String',
        :'wallet_type' => :'String',
        :'national_net_domestic_data' => :'String',
        :'network_routing_order' => :'String',
        :'recurring_options' => :'Ptsv2paymentsidrefundsProcessingInformationRecurringOptions',
        :'bank_transfer_options' => :'Ptsv2creditsProcessingInformationBankTransferOptions',
        :'purchase_options' => :'Ptsv2creditsProcessingInformationPurchaseOptions',
        :'electronic_benefits_transfer' => :'Ptsv2creditsProcessingInformationElectronicBenefitsTransfer',
        :'loan_options' => :'Ptsv2paymentsProcessingInformationLoanOptions',
        :'japan_payment_options' => :'Ptsv2creditsProcessingInformationJapanPaymentOptions'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'commerceIndicator')
        self.commerce_indicator = attributes[:'commerceIndicator']
      end

      if attributes.has_key?(:'processorId')
        self.processor_id = attributes[:'processorId']
      end

      if attributes.has_key?(:'paymentSolution')
        self.payment_solution = attributes[:'paymentSolution']
      end

      if attributes.has_key?(:'reconciliationId')
        self.reconciliation_id = attributes[:'reconciliationId']
      end

      if attributes.has_key?(:'linkId')
        self.link_id = attributes[:'linkId']
      end

      if attributes.has_key?(:'reportGroup')
        self.report_group = attributes[:'reportGroup']
      end

      if attributes.has_key?(:'visaCheckoutId')
        self.visa_checkout_id = attributes[:'visaCheckoutId']
      end

      if attributes.has_key?(:'purchaseLevel')
        self.purchase_level = attributes[:'purchaseLevel']
      end

      if attributes.has_key?(:'industryDataType')
        self.industry_data_type = attributes[:'industryDataType']
      end

      if attributes.has_key?(:'walletType')
        self.wallet_type = attributes[:'walletType']
      end

      if attributes.has_key?(:'nationalNetDomesticData')
        self.national_net_domestic_data = attributes[:'nationalNetDomesticData']
      end

      if attributes.has_key?(:'networkRoutingOrder')
        self.network_routing_order = attributes[:'networkRoutingOrder']
      end

      if attributes.has_key?(:'recurringOptions')
        self.recurring_options = attributes[:'recurringOptions']
      end

      if attributes.has_key?(:'bankTransferOptions')
        self.bank_transfer_options = attributes[:'bankTransferOptions']
      end

      if attributes.has_key?(:'purchaseOptions')
        self.purchase_options = attributes[:'purchaseOptions']
      end

      if attributes.has_key?(:'electronicBenefitsTransfer')
        self.electronic_benefits_transfer = attributes[:'electronicBenefitsTransfer']
      end

      if attributes.has_key?(:'loanOptions')
        self.loan_options = attributes[:'loanOptions']
      end

      if attributes.has_key?(:'japanPaymentOptions')
        self.japan_payment_options = attributes[:'japanPaymentOptions']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@commerce_indicator.nil? && @commerce_indicator.to_s.length > 20
        invalid_properties.push('invalid value for "commerce_indicator", the character length must be smaller than or equal to 20.')
      end

      if !@processor_id.nil? && @processor_id.to_s.length > 3
        invalid_properties.push('invalid value for "processor_id", the character length must be smaller than or equal to 3.')
      end

      if !@payment_solution.nil? && @payment_solution.to_s.length > 12
        invalid_properties.push('invalid value for "payment_solution", the character length must be smaller than or equal to 12.')
      end

      if !@reconciliation_id.nil? && @reconciliation_id.to_s.length > 60
        invalid_properties.push('invalid value for "reconciliation_id", the character length must be smaller than or equal to 60.')
      end

      if !@link_id.nil? && @link_id.to_s.length > 26
        invalid_properties.push('invalid value for "link_id", the character length must be smaller than or equal to 26.')
      end

      if !@report_group.nil? && @report_group.to_s.length > 25
        invalid_properties.push('invalid value for "report_group", the character length must be smaller than or equal to 25.')
      end

      if !@visa_checkout_id.nil? && @visa_checkout_id.to_s.length > 48
        invalid_properties.push('invalid value for "visa_checkout_id", the character length must be smaller than or equal to 48.')
      end

      if !@purchase_level.nil? && @purchase_level.to_s.length > 1
        invalid_properties.push('invalid value for "purchase_level", the character length must be smaller than or equal to 1.')
      end

      if !@industry_data_type.nil? && @industry_data_type.to_s.length > 20
        invalid_properties.push('invalid value for "industry_data_type", the character length must be smaller than or equal to 20.')
      end

      if !@wallet_type.nil? && @wallet_type.to_s.length > 5
        invalid_properties.push('invalid value for "wallet_type", the character length must be smaller than or equal to 5.')
      end

      if !@national_net_domestic_data.nil? && @national_net_domestic_data.to_s.length > 123
        invalid_properties.push('invalid value for "national_net_domestic_data", the character length must be smaller than or equal to 123.')
      end

      if !@network_routing_order.nil? && @network_routing_order.to_s.length > 30
        invalid_properties.push('invalid value for "network_routing_order", the character length must be smaller than or equal to 30.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@commerce_indicator.nil? && @commerce_indicator.to_s.length > 20
      return false if !@processor_id.nil? && @processor_id.to_s.length > 3
      return false if !@payment_solution.nil? && @payment_solution.to_s.length > 12
      return false if !@reconciliation_id.nil? && @reconciliation_id.to_s.length > 60
      return false if !@link_id.nil? && @link_id.to_s.length > 26
      return false if !@report_group.nil? && @report_group.to_s.length > 25
      return false if !@visa_checkout_id.nil? && @visa_checkout_id.to_s.length > 48
      return false if !@purchase_level.nil? && @purchase_level.to_s.length > 1
      return false if !@industry_data_type.nil? && @industry_data_type.to_s.length > 20
      return false if !@wallet_type.nil? && @wallet_type.to_s.length > 5
      return false if !@national_net_domestic_data.nil? && @national_net_domestic_data.to_s.length > 123
      return false if !@network_routing_order.nil? && @network_routing_order.to_s.length > 30
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] commerce_indicator Value to be assigned
    def commerce_indicator=(commerce_indicator)
      if !commerce_indicator.nil? && commerce_indicator.to_s.length > 20
        fail ArgumentError, 'invalid value for "commerce_indicator", the character length must be smaller than or equal to 20.'
      end

      @commerce_indicator = commerce_indicator
    end

    # Custom attribute writer method with validation
    # @param [Object] processor_id Value to be assigned
    def processor_id=(processor_id)
      if !processor_id.nil? && processor_id.to_s.length > 3
        fail ArgumentError, 'invalid value for "processor_id", the character length must be smaller than or equal to 3.'
      end

      @processor_id = processor_id
    end

    # Custom attribute writer method with validation
    # @param [Object] payment_solution Value to be assigned
    def payment_solution=(payment_solution)
      if !payment_solution.nil? && payment_solution.to_s.length > 12
        fail ArgumentError, 'invalid value for "payment_solution", the character length must be smaller than or equal to 12.'
      end

      @payment_solution = payment_solution
    end

    # Custom attribute writer method with validation
    # @param [Object] reconciliation_id Value to be assigned
    def reconciliation_id=(reconciliation_id)
      if !reconciliation_id.nil? && reconciliation_id.to_s.length > 60
        fail ArgumentError, 'invalid value for "reconciliation_id", the character length must be smaller than or equal to 60.'
      end

      @reconciliation_id = reconciliation_id
    end

    # Custom attribute writer method with validation
    # @param [Object] link_id Value to be assigned
    def link_id=(link_id)
      if !link_id.nil? && link_id.to_s.length > 26
        fail ArgumentError, 'invalid value for "link_id", the character length must be smaller than or equal to 26.'
      end

      @link_id = link_id
    end

    # Custom attribute writer method with validation
    # @param [Object] report_group Value to be assigned
    def report_group=(report_group)
      if !report_group.nil? && report_group.to_s.length > 25
        fail ArgumentError, 'invalid value for "report_group", the character length must be smaller than or equal to 25.'
      end

      @report_group = report_group
    end

    # Custom attribute writer method with validation
    # @param [Object] visa_checkout_id Value to be assigned
    def visa_checkout_id=(visa_checkout_id)
      if !visa_checkout_id.nil? && visa_checkout_id.to_s.length > 48
        fail ArgumentError, 'invalid value for "visa_checkout_id", the character length must be smaller than or equal to 48.'
      end

      @visa_checkout_id = visa_checkout_id
    end

    # Custom attribute writer method with validation
    # @param [Object] purchase_level Value to be assigned
    def purchase_level=(purchase_level)
      if !purchase_level.nil? && purchase_level.to_s.length > 1
        fail ArgumentError, 'invalid value for "purchase_level", the character length must be smaller than or equal to 1.'
      end

      @purchase_level = purchase_level
    end

    # Custom attribute writer method with validation
    # @param [Object] industry_data_type Value to be assigned
    def industry_data_type=(industry_data_type)
      if !industry_data_type.nil? && industry_data_type.to_s.length > 20
        fail ArgumentError, 'invalid value for "industry_data_type", the character length must be smaller than or equal to 20.'
      end

      @industry_data_type = industry_data_type
    end

    # Custom attribute writer method with validation
    # @param [Object] wallet_type Value to be assigned
    def wallet_type=(wallet_type)
      if !wallet_type.nil? && wallet_type.to_s.length > 5
        fail ArgumentError, 'invalid value for "wallet_type", the character length must be smaller than or equal to 5.'
      end

      @wallet_type = wallet_type
    end

    # Custom attribute writer method with validation
    # @param [Object] national_net_domestic_data Value to be assigned
    def national_net_domestic_data=(national_net_domestic_data)
      if !national_net_domestic_data.nil? && national_net_domestic_data.to_s.length > 123
        fail ArgumentError, 'invalid value for "national_net_domestic_data", the character length must be smaller than or equal to 123.'
      end

      @national_net_domestic_data = national_net_domestic_data
    end

    # Custom attribute writer method with validation
    # @param [Object] network_routing_order Value to be assigned
    def network_routing_order=(network_routing_order)
      if !network_routing_order.nil? && network_routing_order.to_s.length > 30
        fail ArgumentError, 'invalid value for "network_routing_order", the character length must be smaller than or equal to 30.'
      end

      @network_routing_order = network_routing_order
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          commerce_indicator == o.commerce_indicator &&
          processor_id == o.processor_id &&
          payment_solution == o.payment_solution &&
          reconciliation_id == o.reconciliation_id &&
          link_id == o.link_id &&
          report_group == o.report_group &&
          visa_checkout_id == o.visa_checkout_id &&
          purchase_level == o.purchase_level &&
          industry_data_type == o.industry_data_type &&
          wallet_type == o.wallet_type &&
          national_net_domestic_data == o.national_net_domestic_data &&
          network_routing_order == o.network_routing_order &&
          recurring_options == o.recurring_options &&
          bank_transfer_options == o.bank_transfer_options &&
          purchase_options == o.purchase_options &&
          electronic_benefits_transfer == o.electronic_benefits_transfer &&
          loan_options == o.loan_options &&
          japan_payment_options == o.japan_payment_options
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [commerce_indicator, processor_id, payment_solution, reconciliation_id, link_id, report_group, visa_checkout_id, purchase_level, industry_data_type, wallet_type, national_net_domestic_data, network_routing_order, recurring_options, bank_transfer_options, purchase_options, electronic_benefits_transfer, loan_options, japan_payment_options].hash
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
