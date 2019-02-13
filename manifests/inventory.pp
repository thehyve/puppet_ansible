class ansible::inventory(
    Hash[String, Hash[String, String]] $hosts = {
        'localhost' => {
            'ansible_connection' => 'local',
            'ansible_host' => 'localhost',
        },
    },
) {
    file{ '/etc/ansible/hosts':
        ensure => file,
        content => template('ansible/hosts.erb'),
    }
}
