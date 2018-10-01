class example::template {
  file {'example-template': 
    content => template('example/example-template.erb'),
    path => '/tmp/example-template',
  }
}
