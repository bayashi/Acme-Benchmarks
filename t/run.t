use strict;
use warnings;
use Test::AllModules;

my %win_option = ();
if ($^O eq 'MSWin32') {
    %win_option = (
        lib => ['lib', @INC],
        except => [
            'Acme::Benchmarks::Module::WebRouter',
        ],
    );
}

all_ok(
    search_path => 'Acme::Benchmarks',
    use => 1,
    %win_option,
);