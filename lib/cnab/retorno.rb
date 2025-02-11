module Cnab
  class Retorno
    include PrettyInspect

    def initialize(args = {})
      @header_arquivo = args[:header_arquivo]
      @lotes = args[:lotes]
      @trailer_arquivo = args[:trailer_arquivo]
    end

    def method_missing(method_name)
      return instance_variable_get("@#{method_name}") if instance_variable_defined?("@#{method_name}")
      super
    end

    def respond_to_missing?(method_name, include_private = false)
      return true if instance_variable_defined?("@#{method_name}")
      super
    end
  end
end
