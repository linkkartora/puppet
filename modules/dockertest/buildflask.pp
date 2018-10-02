  docker::image { 'flask':
   docker_file => '/flask-app/Dockerfile',
   notify => Docker::Run['flask'],
  }

  docker::run { 'flask':
   image => 'flask',
  }
