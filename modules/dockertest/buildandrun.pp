class docker::buildandrun {
  docker::image { 'test-hello':
   docker_file => '/tmp/hello.Dockerfile',
   ensure => latest,
   notify => Docker::Run['test-hello'],
  }

  docker::run { 'test-hello':
   image => 'test-hello',
  }
}
