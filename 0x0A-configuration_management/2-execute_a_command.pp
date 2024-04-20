# kills the killmenow procss

exec {'pkill':
  command  => 'pkill killmenow',
  provider => 'shell',
}
