class ansible::pmc(
    String $staging_dir = '/srv/pmc',
) {
    file { '/var/lib/playbooks/pmc_vars.yml':
        ensure => file,
        content => template('ansible/pmc_vars.yml.erb'),
    }
    file { '/var/lib/playbooks':
        source => [
            "puppet:///modules/ansible/*",
        ],
}
