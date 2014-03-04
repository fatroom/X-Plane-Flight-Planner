node default {

  class { 'nodejs':
    version => 'stable',
  }

  class {'::mongodb::server':
    auth => true,
  }

  mongodb::db { 'xplane_apt_nav':
    user          => 'xpfp',
    password      => 'pass1',
  }
}

