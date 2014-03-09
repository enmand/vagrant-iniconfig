require_relative "vagrant-iniconfig/plugin"
require_relative "vagrant-iniconfig/version"

module VagrantPlugins
	module IniConfig
		def self.source_root
			@source_root ||= Pathname.new(File.expand_path('../../', __FILE__))
		end
	end
end
