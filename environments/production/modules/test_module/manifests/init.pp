# Class: test_module
# ===========================
#
# Full description of class test_module here.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream apache2 servers as an array."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_apache2_servers must be set by the
#  External Node Classifier as a comma separated list of hostnames." (Note,
#  global variables should be avoided in favor of class parameters as
#  of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#    class { 'test_module':
#      servers => [ 'pool.apache2.org', 'apache2.local.company.com' ],
#    }
#
# Authors
# -------
#
# Author Name <author@domain.com>
#
# Copyright
# ---------
#
# Copyright 2018 Your name here, unless otherwise noted.
#
class test_module {
package { 'apache2':
  ensure => 'installed',
}
service { 'apache2':
  ensure => 'running',
  enable => 'true',
}
user { 'vagrant':
  ensure           => 'present',
  comment          => ',,,',
  gid              => '1000',
  groups           => ['adm', 'cdrom', 'sudo', 'dip', 'plugdev', 'lpadmin', 'sambashare'],
  home             => '/home/vagrant',
  password         => '$6$9OG8ULUJ$Efzmz2UUiaJuobfZzQNFtXtf8mTcJpF9Km1vknhj5VdCAFyoaKgz1OiR8zw8hY8Nm.Py2LSdOuprr1co0jKyD1',
  password_max_age => '99999',
  password_min_age => '0',
  shell            => '/bin/bash',
  uid              => '1000',
}

}
