use strict;
use warnings;
use Module::Build::Pluggable qw/CPANfile/;

my $builder = Module::Build::Pluggable->new(
    name                => 'Acme-Benchmarks',
    module_name         => 'Acme::Benchmarks',
    license             => 'artistic_2',
    dist_author         => 'Dai Okabayashi <bayashi@cpan.org>',
    dist_version_from   => 'lib/Acme/Benchmarks.pm',
    add_to_cleanup      => [ 'Acme-Benchmarks-*' ],
    no_index => {
        directory => [ 't', 'xt', 'inc' ],
    },
    meta_merge     => {
        resources => {
            repository  => 'http://github.com/bayashi/Acme-Benchmarks',
            bugtracker  => 'http://github.com/bayashi/Acme-Benchmarks/issues',
        }
    },
    recursive_test_files => 1,
    test_files => (-d '.git' || $ENV{RELEASE_TESTING}) ? ['t/', 'xt/'] : ['t/'],
    create_license => 1, # https://metacpan.org/pod/Software::License
);

$builder->create_build_script();
