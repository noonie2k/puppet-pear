class my_pear(
  $package = $my_pear::params::package
) inherits my_pear::params {

  # Install the PEAR package.
  if !defined(Package[$package]) {
    package { $package:
      ensure => installed,
    }
  }
}

