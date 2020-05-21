package Acme::Benchmarks;
use strict;
use warnings;

our $VERSION = '0.01';

1;

__END__

=encoding UTF-8

=head1 NAME

Acme::Benchmarks - Perl5 Benchmarks


=head1 SYNOPSIS

Prepare for benchmark to install dependent modules.

    cpanm -L extlib --installdeps .

Kick a test to run all benchmarks.

    perl -Ilib -Iextlib/lib/perl5 t/run.t

Use each module to run each brnchmark.

    perl -Ilib -Iextlib/lib/perl5 -MAcme::Benchmarks::Core::String::Concat -e 1

If you would like to confirm that routines return same values, L<Benchmark::Confirm> is helpfull.

    perl -Ilib -Iextlib/lib/perl5 -MBenchmark::Confirm -MAcme::Benchmarks::Core::String::Concat -e 1
    ... Benchmark...
    ok 1
    ok 2


=head1 DESCRIPTION

Perl Benchmarks haddle in here.

See github workflow L<https://github.com/bayashi/Acme-Benchmarks/actions> for benchmark results.


=head1 REPOSITORY

=begin html

<a href="https://github.com/bayashi/Acme-Benchmarks/blob/master/README.pod"><img src="https://img.shields.io/badge/Version-0.01-green?style=flat"></a> <a href="https://github.com/bayashi/Acme-Benchmarks/blob/master/LICENSE"><img src="https://img.shields.io/badge/LICENSE-Artistic%202.0-GREEN.png"></a> <a href="https://github.com/bayashi/Acme-Benchmarks/actions"><img src="https://github.com/bayashi/Acme-Benchmarks/workflows/master/badge.svg"/></a>

=end html

Acme::Benchmarks is hosted on github: L<http://github.com/bayashi/Acme-Benchmarks>

I appreciate any feedback :D


=head1 AUTHOR

Dai Okabayashi E<lt>bayashi@cpan.orgE<gt>


=head1 SEE ALSO

L<Benchmarks>

L<Benchmark::Confirm>

L<Test::AllModules>


=head1 LICENSE

C<Acme::Benchmarks> is free software; you can redistribute it and/or modify it under the terms of the Artistic License 2.0. (Note that, unlike the Artistic License 1.0, version 2.0 is GPL compatible by itself, hence there is no benefit to having an Artistic 2.0 / GPL disjunction.) See the file LICENSE for details.

=cut
