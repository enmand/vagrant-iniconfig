require "vagrant"
require "inifile"

module VagrantPlugin
	module IniConfig
		class Config < Vagrant.plugin("2", :config)
			attr_accessor :file
			attr_accessor :config

			def initialize
				@file = UNSET_VALUE
				@config = UNSET_VALUE
			end

			def file=(file)
				@file = file
				@config = IniFile.load file
			end

			def finalize!
				@file = nil if @file == UNSET_VALUE
				@config = nil if @config == USSET_VALUE
			end
		end
	end
end

