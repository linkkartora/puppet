class example::goodbye {
  file { 'goodbye':
    path => '/tmp/bye',
    content => "It's not a real goodbye!\n",
  }
}
