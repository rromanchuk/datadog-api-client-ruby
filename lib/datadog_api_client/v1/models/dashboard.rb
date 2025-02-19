=begin
#Datadog API V1 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://openapi-generator.tech

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

require 'date'
require 'time'

module DatadogAPIClient::V1
  # A dashboard is Datadog’s tool for visually tracking, analyzing, and displaying key performance metrics, which enable you to monitor the health of your infrastructure.
  class Dashboard
    # whether the object has unparsed attributes
    attr_accessor :_unparsed

    # Identifier of the dashboard author.
    attr_accessor :author_handle

    # Name of the dashboard author.
    attr_accessor :author_name

    # Creation date of the dashboard.
    attr_accessor :created_at

    # Description of the dashboard.
    attr_accessor :description

    # ID of the dashboard.
    attr_accessor :id

    # Whether this dashboard is read-only. If True, only the author and admins can make changes to it. Prefer using `restricted_roles` to manage write authorization.
    attr_accessor :is_read_only

    attr_accessor :layout_type

    # Modification date of the dashboard.
    attr_accessor :modified_at

    # List of handles of users to notify when changes are made to this dashboard.
    attr_accessor :notify_list

    attr_accessor :reflow_type

    # A list of role identifiers. Only the author and users associated with at least one of these roles can edit this dashboard.
    attr_accessor :restricted_roles

    # Array of template variables saved views.
    attr_accessor :template_variable_presets

    # List of template variables for this dashboard.
    attr_accessor :template_variables

    # Title of the dashboard.
    attr_accessor :title

    # The URL of the dashboard.
    attr_accessor :url

    # List of widgets to display on the dashboard.
    attr_accessor :widgets

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'author_handle' => :'author_handle',
        :'author_name' => :'author_name',
        :'created_at' => :'created_at',
        :'description' => :'description',
        :'id' => :'id',
        :'is_read_only' => :'is_read_only',
        :'layout_type' => :'layout_type',
        :'modified_at' => :'modified_at',
        :'notify_list' => :'notify_list',
        :'reflow_type' => :'reflow_type',
        :'restricted_roles' => :'restricted_roles',
        :'template_variable_presets' => :'template_variable_presets',
        :'template_variables' => :'template_variables',
        :'title' => :'title',
        :'url' => :'url',
        :'widgets' => :'widgets'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'author_handle' => :'String',
        :'author_name' => :'String',
        :'created_at' => :'Time',
        :'description' => :'String',
        :'id' => :'String',
        :'is_read_only' => :'Boolean',
        :'layout_type' => :'DashboardLayoutType',
        :'modified_at' => :'Time',
        :'notify_list' => :'Array<String>',
        :'reflow_type' => :'DashboardReflowType',
        :'restricted_roles' => :'Array<String>',
        :'template_variable_presets' => :'Array<DashboardTemplateVariablePreset>',
        :'template_variables' => :'Array<DashboardTemplateVariable>',
        :'title' => :'String',
        :'url' => :'String',
        :'widgets' => :'Array<Widget>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'author_name',
        :'description',
        :'notify_list',
        :'template_variable_presets',
        :'template_variables',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::Dashboard` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::Dashboard`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'author_handle')
        self.author_handle = attributes[:'author_handle']
      end

      if attributes.key?(:'author_name')
        self.author_name = attributes[:'author_name']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'is_read_only')
        self.is_read_only = attributes[:'is_read_only']
      else
        self.is_read_only = false
      end

      if attributes.key?(:'layout_type')
        self.layout_type = attributes[:'layout_type']
      end

      if attributes.key?(:'modified_at')
        self.modified_at = attributes[:'modified_at']
      end

      if attributes.key?(:'notify_list')
        if (value = attributes[:'notify_list']).is_a?(Array)
          self.notify_list = value
        end
      end

      if attributes.key?(:'reflow_type')
        self.reflow_type = attributes[:'reflow_type']
      end

      if attributes.key?(:'restricted_roles')
        if (value = attributes[:'restricted_roles']).is_a?(Array)
          self.restricted_roles = value
        end
      end

      if attributes.key?(:'template_variable_presets')
        if (value = attributes[:'template_variable_presets']).is_a?(Array)
          self.template_variable_presets = value
        end
      end

      if attributes.key?(:'template_variables')
        if (value = attributes[:'template_variables']).is_a?(Array)
          self.template_variables = value
        end
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'url')
        self.url = attributes[:'url']
      end

      if attributes.key?(:'widgets')
        if (value = attributes[:'widgets']).is_a?(Array)
          self.widgets = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @layout_type.nil?
        invalid_properties.push('invalid value for "layout_type", layout_type cannot be nil.')
      end

      if @title.nil?
        invalid_properties.push('invalid value for "title", title cannot be nil.')
      end

      if @widgets.nil?
        invalid_properties.push('invalid value for "widgets", widgets cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @layout_type.nil?
      return false if @title.nil?
      return false if @widgets.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          author_handle == o.author_handle &&
          author_name == o.author_name &&
          created_at == o.created_at &&
          description == o.description &&
          id == o.id &&
          is_read_only == o.is_read_only &&
          layout_type == o.layout_type &&
          modified_at == o.modified_at &&
          notify_list == o.notify_list &&
          reflow_type == o.reflow_type &&
          restricted_roles == o.restricted_roles &&
          template_variable_presets == o.template_variable_presets &&
          template_variables == o.template_variables &&
          title == o.title &&
          url == o.url &&
          widgets == o.widgets
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [author_handle, author_name, created_at, description, id, is_read_only, layout_type, modified_at, notify_list, reflow_type, restricted_roles, template_variable_presets, template_variables, title, url, widgets].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when :Array
        # generic array, return directly
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
        # models (e.g. Pet) or oneOf
        klass = DatadogAPIClient::V1.const_get(type)
        res = klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
        if res.instance_of? DatadogAPIClient::V1::UnparsedObject
          self._unparsed = true
        end
        res
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
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

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
