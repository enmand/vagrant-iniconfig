begin
	require "vagrant"
rescue LoadError
	raise "Sorry, you can only use this plugin in a Vagrant environment"
end

require_relative "version"

if Vagrant::VERSION < "1.2.0"
	raise "Sorry, this plugin only works on Vagrant 1.2.0+"
end

module VagrantPlugins
	module IniConfig
		class Plugin < Vagrant.plugin('2')
			name "IniConfig"
			description "Use Ini configuration files in Vagrant"

			config :ini do
				require_relative "config"
				Config
			end
		end
	end
end

