#!/usr/bin/pup
# install the `flask` package, version 2.1.0
package {'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}
