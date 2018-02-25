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
