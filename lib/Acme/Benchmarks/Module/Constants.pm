package Acme::Benchmarks::Module::Constants;
use strict;
use warnings;
use Benchmarks sub {
    use constant CONSTANT => 13;

    use Readonly;
    Readonly my $READONLY => 13;

    use Data::Lock qw/dlock/;
    dlock my $DATA_LOCK = 13;

    sub raw_func { 13 }

    {
        constant => sub {
            for (0..CONSTANT) {};
        },
        readonly => sub {
            for (0..$READONLY) {};
        },
        data_lock => sub {
            for (0..$DATA_LOCK) {};
        },
        raw_func => sub {
            for (0..raw_func()) {};
        },
    };
};

1;

__END__

=encoding UTF-8

=head1 NAME

Acme::Benchmarks::Module::Constants - Compare the ways to use constant variables

=head1 AUTHOR

Dai Okabayashi E<lt>bayashi@cpan.orgE<gt>
