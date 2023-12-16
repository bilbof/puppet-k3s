# @summary Class responsible for uninstalling k3s
class k3s::uninstall {
  if $k3s::operation_mode == 'server' {
    exec { '/usr/local/bin/k3s-uninstall.sh':
      onlyif => '/usr/bin/test -f /usr/local/bin/k3s-uninstall.sh',
    }
  } else {
    exec { '/usr/local/bin/k3s-agent-uninstall.sh':
      onlyif => '/usr/bin/test -f /usr/local/bin/k3s-agent-uninstall.sh',
    }
  }
}
