require 'yard-dm/extensions'

require 'yard'

module YARD
  module DM
    class HasHandler < YARD::Handlers::Ruby::Base

      include Extensions

      handles method_call(:has)

      def process
        args = statement.parameters
        n = args[0]
        name = args[1].last

        return unless name.type == :symbol

        return unless (
          (n.type == :int && n.source =~ /^[1-9]\d*$/) ||
          (n.type == :var_ref && n.source == 'n') ||
          (n.type == :dot2 && (
            (n[0].type == :int && n[0].source =~ /^[0-9]\d*$/) || (
              (n[1].type == :int && n[1].source =~ /^[1-9]\d*$/) ||
              (n[1].type == :var_ref && n[1].source == 'n')
            )
          ))
        )

        nobj = effected_namespace
        mscope = scope
        name = name.source[1..-1]

        register MethodObject.new(nobj, name, :class) do |o|
          o.visibility = :public
          o.source = statement.source
          o.signature = "def self.#{name}"
          o.parameters = [['repository', 'nil']]
        end

        register MethodObject.new(nobj, name, mscope) do |o|
          o.visibility = :public
          o.source = statement.source
          o.signature = "def #{name}"
        end

        register MethodObject.new(nobj, "#{name}=", mscope) do |o|
          o.visibility = :public
          o.source = statement.source
          o.signature = "def #{name}="
          o.parameters = [["new_#{name}", nil]]
        end
      end

    end
  end
end
