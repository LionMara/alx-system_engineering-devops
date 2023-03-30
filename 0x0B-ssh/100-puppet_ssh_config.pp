# class ssh_config
class ssh_config {
  file {'/home/vagrant/.ssh/config':
    ensure  => present,
    mode    => '0644',
    content => '
         Host server
         IdentityFile ~/.ssh/school
         PasswordAuthentication no
    ',
  }
}

include ssh_config
