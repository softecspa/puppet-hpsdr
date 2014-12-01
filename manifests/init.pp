# == Class: hpsdr
#
# This class includes the SDR HP repository
#
# === Authors
#
# Lorenzo Cocchi <lorenzo.cocchi@softecspa.it>
#
class hpsdr () {

  if $::lsbdistcodename != 'precise' and $::lsbdistcodename != 'trusty' {
    fail("Unsupported ${::lsbdistid} ${::lsbdistcodename}")
  }

  apt::source { 'hp_sdr':
  comment     => 'HP SDR Repository Listing',
  location    => 'http://downloads.linux.hp.com//SDR/downloads/ManagementComponentPack',
  release     => "${::lsbdistcodename}/current",
  repos       => 'non-free',
  key         => '2689B887',
  key_server  => 'subkeys.pgp.net',
  include_src => true,
  include_deb => true,
  }

}
