=begin
#Square Connect API

OpenAPI spec version: 2.0
Contact: developers@squareup.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module SquareConnect

  class V1Refund
    # The type of refund 
    attr_accessor :type

    # The merchant-specified reason for the refund.
    attr_accessor :reason

    # The amount of money refunded. This amount is always negative.
    attr_accessor :refunded_money

    # The amount of processing fee money refunded. This amount is always positive.
    attr_accessor :refunded_processing_fee_money

    # The total amount of tax money refunded. This amount is always negative.
    attr_accessor :refunded_tax_money

    # The amount of additive tax money refunded. This amount is always negative.
    attr_accessor :refunded_additive_tax_money

    # All of the additive taxes associated with the refund.
    attr_accessor :refunded_additive_tax

    # The amount of inclusive tax money refunded. This amount is always negative.
    attr_accessor :refunded_inclusive_tax_money

    # All of the inclusive taxes associated with the refund.
    attr_accessor :refunded_inclusive_tax

    # The amount of tip money refunded. This amount is always negative.
    attr_accessor :refunded_tip_money

    # The amount of discount money refunded. This amount is always positive.
    attr_accessor :refunded_discount_money

    # The amount of surcharge money refunded. This amount is always negative.
    attr_accessor :refunded_surcharge_money

    # A list of all surcharges associated with the refund.
    attr_accessor :refunded_surcharges

    # The time when the merchant initiated the refund for Square to process, in ISO 8601 format.
    attr_accessor :created_at

    # The time when Square processed the refund on behalf of the merchant, in ISO 8601 format.
    attr_accessor :processed_at

    # A Square-issued ID associated with the refund. For single-tender refunds, payment_id is the ID of the original payment ID. For split-tender refunds, payment_id is the ID of the original tender. For exchange-based refunds (is_exchange == true), payment_id is the ID of the original payment ID even if the payment includes other tenders.
    attr_accessor :payment_id

    # 
    attr_accessor :merchant_id

    # Indicates whether or not the refund is associated with an exchange. If is_exchange is true, the refund reflects the value of goods returned in the exchange not the total money refunded.
    attr_accessor :is_exchange

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'type' => :'type',
        :'reason' => :'reason',
        :'refunded_money' => :'refunded_money',
        :'refunded_processing_fee_money' => :'refunded_processing_fee_money',
        :'refunded_tax_money' => :'refunded_tax_money',
        :'refunded_additive_tax_money' => :'refunded_additive_tax_money',
        :'refunded_additive_tax' => :'refunded_additive_tax',
        :'refunded_inclusive_tax_money' => :'refunded_inclusive_tax_money',
        :'refunded_inclusive_tax' => :'refunded_inclusive_tax',
        :'refunded_tip_money' => :'refunded_tip_money',
        :'refunded_discount_money' => :'refunded_discount_money',
        :'refunded_surcharge_money' => :'refunded_surcharge_money',
        :'refunded_surcharges' => :'refunded_surcharges',
        :'created_at' => :'created_at',
        :'processed_at' => :'processed_at',
        :'payment_id' => :'payment_id',
        :'merchant_id' => :'merchant_id',
        :'is_exchange' => :'is_exchange'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'type' => :'String',
        :'reason' => :'String',
        :'refunded_money' => :'V1Money',
        :'refunded_processing_fee_money' => :'V1Money',
        :'refunded_tax_money' => :'V1Money',
        :'refunded_additive_tax_money' => :'V1Money',
        :'refunded_additive_tax' => :'Array<V1PaymentTax>',
        :'refunded_inclusive_tax_money' => :'V1Money',
        :'refunded_inclusive_tax' => :'Array<V1PaymentTax>',
        :'refunded_tip_money' => :'V1Money',
        :'refunded_discount_money' => :'V1Money',
        :'refunded_surcharge_money' => :'V1Money',
        :'refunded_surcharges' => :'Array<V1PaymentSurcharge>',
        :'created_at' => :'String',
        :'processed_at' => :'String',
        :'payment_id' => :'String',
        :'merchant_id' => :'String',
        :'is_exchange' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'reason')
        self.reason = attributes[:'reason']
      end

      if attributes.has_key?(:'refunded_money')
        self.refunded_money = attributes[:'refunded_money']
      end

      if attributes.has_key?(:'refunded_processing_fee_money')
        self.refunded_processing_fee_money = attributes[:'refunded_processing_fee_money']
      end

      if attributes.has_key?(:'refunded_tax_money')
        self.refunded_tax_money = attributes[:'refunded_tax_money']
      end

      if attributes.has_key?(:'refunded_additive_tax_money')
        self.refunded_additive_tax_money = attributes[:'refunded_additive_tax_money']
      end

      if attributes.has_key?(:'refunded_additive_tax')
        if (value = attributes[:'refunded_additive_tax']).is_a?(Array)
          self.refunded_additive_tax = value
        end
      end

      if attributes.has_key?(:'refunded_inclusive_tax_money')
        self.refunded_inclusive_tax_money = attributes[:'refunded_inclusive_tax_money']
      end

      if attributes.has_key?(:'refunded_inclusive_tax')
        if (value = attributes[:'refunded_inclusive_tax']).is_a?(Array)
          self.refunded_inclusive_tax = value
        end
      end

      if attributes.has_key?(:'refunded_tip_money')
        self.refunded_tip_money = attributes[:'refunded_tip_money']
      end

      if attributes.has_key?(:'refunded_discount_money')
        self.refunded_discount_money = attributes[:'refunded_discount_money']
      end

      if attributes.has_key?(:'refunded_surcharge_money')
        self.refunded_surcharge_money = attributes[:'refunded_surcharge_money']
      end

      if attributes.has_key?(:'refunded_surcharges')
        if (value = attributes[:'refunded_surcharges']).is_a?(Array)
          self.refunded_surcharges = value
        end
      end

      if attributes.has_key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.has_key?(:'processed_at')
        self.processed_at = attributes[:'processed_at']
      end

      if attributes.has_key?(:'payment_id')
        self.payment_id = attributes[:'payment_id']
      end

      if attributes.has_key?(:'merchant_id')
        self.merchant_id = attributes[:'merchant_id']
      end

      if attributes.has_key?(:'is_exchange')
        self.is_exchange = attributes[:'is_exchange']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      type_validator = EnumAttributeValidator.new('String', ["FULL", "PARTIAL"])
      return false unless type_validator.valid?(@type)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["FULL", "PARTIAL"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for 'type', must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          reason == o.reason &&
          refunded_money == o.refunded_money &&
          refunded_processing_fee_money == o.refunded_processing_fee_money &&
          refunded_tax_money == o.refunded_tax_money &&
          refunded_additive_tax_money == o.refunded_additive_tax_money &&
          refunded_additive_tax == o.refunded_additive_tax &&
          refunded_inclusive_tax_money == o.refunded_inclusive_tax_money &&
          refunded_inclusive_tax == o.refunded_inclusive_tax &&
          refunded_tip_money == o.refunded_tip_money &&
          refunded_discount_money == o.refunded_discount_money &&
          refunded_surcharge_money == o.refunded_surcharge_money &&
          refunded_surcharges == o.refunded_surcharges &&
          created_at == o.created_at &&
          processed_at == o.processed_at &&
          payment_id == o.payment_id &&
          merchant_id == o.merchant_id &&
          is_exchange == o.is_exchange
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [type, reason, refunded_money, refunded_processing_fee_money, refunded_tax_money, refunded_additive_tax_money, refunded_additive_tax, refunded_inclusive_tax_money, refunded_inclusive_tax, refunded_tip_money, refunded_discount_money, refunded_surcharge_money, refunded_surcharges, created_at, processed_at, payment_id, merchant_id, is_exchange].hash
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
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
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
        temp_model = SquareConnect.const_get(type).new
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
        value.compact.map{ |v| _to_hash(v) }
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
