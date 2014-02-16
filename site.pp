node default {

    file { '/tmp/mytestfile.t':
        owner   => 'root',
        group   => 'root',
        content => "This file was created by puppet.\n",
        ensure  => present,
    }
} 
