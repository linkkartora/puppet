class example {
  file { 'hello':
    path => '/tmp/hello',
    content => "Hello World!\n",
  }
  include example::goodbye
  include example::template
  
  notify {"This is the master class of example " :}
}
