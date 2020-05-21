package Acme::Benchmarks::Core::ArgAs;
use strict;
use warnings;
use Benchmarks sub {
    my %HASH = map { $_ => $_ } 1..10;

    sub as_hash { my %hash = @_; return; }
    sub as_ref  { my ($arg) = @_; return; }

    {
        as_hash => sub {
            as_hash(%HASH);
        },
        as_ref => sub {
            as_ref(\%HASH);
        },
    };
};

1;

__END__

=encoding UTF-8

=head1 NAME

Acme::Benchmarks::Core::ArgAs - Compare the ways to pass args as hash or reference

=head1 AUTHOR

Dai Okabayashi E<lt>bayashi@cpan.orgE<gt>
