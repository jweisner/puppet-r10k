class r10k {
    $gemlist = [
        "r10k",
    ]

    $package_deps = [
        'rubygems',
        'ruby-devel',
    ]

    package { $gemlist:
        ensure   => installed,
        provider => 'gem',
        require  => Package[$package_deps],
    }
}
