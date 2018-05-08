# frozen_string_literal: true

require_relative '../../command'

module Lkr
  module Commands
    class Look
      class Rm < Lkr::Command
        def initialize(look_id, options)
          super()
          @look_id = look_id
          @options = options
        end

        def execute(input: $stdin, output: $stdout)
          say_warning("options: #{@options.inspect}") if @options[:debug]
          begin
            with_session do
            delete_look(@look_id)
          end
        end
      end
    end
  end
end