# Install the Flask package, version 2.1.0

# manifests/install_flask.pp
package { 'python3-pip':
  ensure => installed,
}

exec { 'install_flask_werkzeug':
  command => '/usr/bin/pip3 install Flask==2.1.0 Werkzeug==2.1.1',
  unless  => '/usr/bin/pip3 show Flask | grep Version | grep 2.1.0 && /usr/bin/pip3 show Werkzeug | grep Version | grep 2.1.1',
  require => Package['python3-pip'],
}

