class docker::image {
  docker::image { 'bitfield/hello':
   ensure => 'latest',
  }
}
