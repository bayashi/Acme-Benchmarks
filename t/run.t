use strict;
use warnings;
use Test::AllModules;

all_ok(
    search_path => 'Acme::Benchmarks',
    use => 1,
);