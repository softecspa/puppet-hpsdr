# == define hpsdr::package
#
# Manage packages from SDR HP repository. 
#
# === Params
#
# [*ensure*]
#   What state the package should be in, default present.
#
# [*package*]
#   The package name.
#
# === Authors
#
# Lorenzo Cocch <lorenzo.cocchi@softecspa.it>
#
define hpsdr::package (
  $ensure  = 'present',
  $package = '',
) {

  include hpsdr

  $package_name = $package?{
    ''      => $name,
    default => $package
  }

  package {$package_name:
    ensure  => $ensure,
    require => Class['hpsdr'],
  }

}
