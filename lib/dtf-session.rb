require "dtf-session/version"
require 'thor'

load "#{File.join(File.dirname(__FILE__), "/config/environment.rb")}"

# TODO: Add fields like env_initial from testrunner to CaseTest

module Dtf

  module Session
    require 'session'


    class Environment

      def self.env_to_hash(env_string)
        lines = env_string.split("\n")
        key_value_pairs = lines.map { |line|
          key, value = *line.split("=", 2)
          [key.to_sym, value]
        }

        Hash[key_value_pairs]
      end

      def self.create_shell
        ::Session.new
      end

      def self.set_debug(shell)
        shell.debug = true
      end

    end
  end
end
