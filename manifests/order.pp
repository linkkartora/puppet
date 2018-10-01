file { '/tmp/order/first':
  content => "I'm First!\n",
  required => File['order'],
}

file { 'order':
  path => "/tmp/order",
  ensure => "directory",
}
