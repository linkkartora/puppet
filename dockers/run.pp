class docker::run {
    docker::run { 'hello':
     #ensure => absent,
     image => 'bitfield/hello',
     command => '/bin/sh -c "while true; do echo Hello, world; sleep 1; done"',
  }
}
