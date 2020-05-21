package Acme::Benchmarks::Core::String::Concat;
use strict;
use warnings;
use Benchmarks sub {
    my $str1 = 'foo';
    my $str2 = 'bar';
    my $str3 = 'baz';
    my $str4 = 'hoge';

    {
        dot => sub {
            $str1 . ',' . $str2 . ',' . $str3 . ',' . $str4;
        },
        join => sub {
            join ',', $str1 , $str2 , $str3 , $str4;
        },
    };
};

1;

__END__

=encoding UTF-8

=head1 NAME

Acme::Benchmarks::Core::String::Concat - Compare the ways to concat strings

=head1 AUTHOR

Dai Okabayashi E<lt>bayashi@cpan.orgE<gt>
