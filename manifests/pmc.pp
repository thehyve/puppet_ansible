class ansible::pmc(
    String $staging_dir = '/srv/pmc',
) {
    file { '/var/lib/playbooks/pmc_vars.yml':
        ensure => file,
        content => template('ansible/pmc_vars.yml.erb'),
    }
    file { '/var/lib/playbooks/cbio_dump.yml':
        source => [
            "puppet:///modules/ansible/cbio_dump.yml",
        ],
    }
    file { '/var/lib/playbooks/dexec.yml':
        source => [
            "puppet:///modules/ansible/dexec.yml",
        ],
    }
    file { '/var/lib/playbooks/keycloak_dump.yml':
        source => [
            "puppet:///modules/ansible/keycloak_dump.yml",
        ],
    }
    file { '/var/lib/playbooks/rotate.yml':
        source => [
            "puppet:///modules/ansible/rotate.yml",
        ],
    }
    file { '/var/lib/playbooks/save_notify.yml':
        source => [
            "puppet:///modules/ansible/save_notify.yml",
        ],
    }
    file { '/var/lib/playbooks/transmart_dump.yml':
        source => [
            "puppet:///modules/ansible/transmart_dump.yml",
        ],
    }
}
