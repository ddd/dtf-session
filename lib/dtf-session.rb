require "dtf-session/version"
require 'thor'

load "#{File.join(File.dirname(__FILE__), "/config/environment.rb")}"

# TODO: Add any fields from testrunner to CaseTest still needed

module Dtf

  module Session
    require 'session'


    class Environment

      attr_accessor :test_shell
      attr_accessor :start_env
      attr_accessor :stop_env

      def set_start_env(shell)
        env = shell.execute('printenv')
        @start_env = self.env_to_hash(env[0])
      end

      def set_stop_env(shell)
        env = shell.execute('printenv')
        @stop_env = self.env_to_hash(env[0])
      end

      def env_to_hash(env_string)
        lines = env_string.split("\n")
        key_value_pairs = lines.map { |line|
          key, value = *line.split("=", 2)
          [key.to_sym, value]
        }

        Hash[key_value_pairs]
      end
    end

  end
end
