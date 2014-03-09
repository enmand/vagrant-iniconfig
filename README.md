# Vagrant::Iniconfig

Use a INI file to manage your configuration for Vagrant. This might be useful
if you are using Vagrant in multiple environments, and want to use different
configuration options for each environment.

## Installation

Add this line to your application's Gemfile:

    gem 'vagrant-iniconfig'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install vagrant-iniconfig
	$ vagrant plugin install pkg/vagrant-iniconfig-0.1.gem

## Usage

In your Vagrantfile, add

	Vagrant.require_plugin 'vagrant-iniconfig'

Then in your configuration

	VAGRANTFILE_API_VERSION = "2"
	Vagrant.config(VAGRANTFILE_API_VERSION) do |config|
		...
		config.ini.file = 'path/to/file.ini'

Your INI configurations are then available on

	config.ini.config
