class ansible::requirements(
    String $version = 'latest',
) {
    package { 'ansible':
        provider        => pip,
        name            => ansible,
        ensure          => $version,
        install_options => [
            '--user',
            '--upgrade',
        ],
    }
}
