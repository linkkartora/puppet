class dockers::buildnginx {
    #saving to local dockerFile in oder to apply docker image build
    file { '/tmp/Dockerfile.nginx':
      source => '/tmp/nginx.Dockerfile',
      notify => Docker::Image['pbg-nginx'],
    }

    docker::image { 'pbg-nginx':
      docker_file => '/tmp/Dockerfile.nginx',
      ensure      => latest,
    }

    docker::run { 'pbg-nginx':
     image => 'pbg-nginx:latest',
     ports => ['8080:8080'],
     pull_on_start => true,
    }
}
