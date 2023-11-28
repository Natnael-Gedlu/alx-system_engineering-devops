# Install Nginx package
package { 'nginx':
  ensure => 'installed',
}

file { '/etc/nginx/sites-available/default':
  ensure  => file,
  content => '
http {
  server {
    listen 80;
    location / {
      root   /var/www/html;
      index  index.html;
    }

    location /redirect_me {
      return 301 https://www.youtube.com/watch?v=QH2-TGUlwu4;
    }
  }
}
events {}',
  require => Package['nginx'],
}

file { '/var/www/html/index.html':
  ensure  => file,
  content => 'Hello World!',
  require => Package['nginx'],
}

service { 'nginx':
  ensure  => 'running',
  enable  => true,
  require => [Package['nginx'], File['/etc/nginx/sites-available/default']],
}
