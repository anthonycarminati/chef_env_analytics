name 'chef_env_analytics'
maintainer 'Anthony Carminati'
maintainer_email 'anthony@carminati.io'
license 'All rights reserved'
description 'Installs/Configures chef_env_analytics'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
source_url 'https://github.com/anthonycarminati/chef_env_analytics'
version '0.1.0'

recipe 'chef_env_analytics::setup'
recipe 'chef_env_analytics::configure'
recipe 'chef_env_analytics::deploy'
recipe 'chef_env_analytics::undeploy'
recipe 'chef_env_analytics::shutdown'