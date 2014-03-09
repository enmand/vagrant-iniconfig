require "vagrant"
require "inifile"

module VagrantPlugins
	module IniConfig
		class Config < Vagrant.plugin("2", :config)
			attr_accessor :file
			attr_accessor :config

			def initialize
				@file = UNSET_VALUE
				@config = UNSET_VALUE

				@_finalized = false
			end

			def file=(file)
				@file = file
				@config = IniFile.load file
			end

			def finalize!
				@file = nil if @file == UNSET_VALUE
				@config = nil if @config == UNSET_VALUE

				@_finalized = true
			end
		end
	end
end

