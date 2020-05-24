package Acme::Benchmarks::Module::TemplateEngine;
use strict;
use warnings;
use FindBin qw($Bin);
use Benchmarks sub {
    use Text::Xslate;
    use Text::MicroTemplate::Extended;
    use HTML::Template::Pro;
    use Template;

    my @path = ("$Bin/../workdir/template", "$Bin/workdir/template");

    my $tx  = Text::Xslate->new(
        path      => \@path,
        cache_dir => '.xslate_cache',
        cache     => 2,
    );
    my $mt = Text::MicroTemplate::Extended->new(
        include_path => \@path,
        use_cache    => 2,
    );
    my $ht = HTML::Template->new(
        path           => \@path,
        filename       => "index.ht",
        case_sensitive => 1,
    );
    my $tt = Template->new(
        INCLUDE_PATH => \@path,
        COMPILE_EXT  => '.out',
    );

    my %vars = (
         data => [(
            { title => 'Islands in the stream' },
            { title => 'Beautiful code' },
            { title => 'Introduction to Psychology' },
            { title => 'Programming Perl' },
            { title => 'Compilers: Principles, Techniques, and Tools' },
         ) x 100],
    );

    {
        Xslate => sub {
            my $body = [$tx->render('index.tx', \%vars)];
            return;
        },
        MicroTemplate => sub {
            my $body = [$mt->render('index', \%vars)];
            return;
        },
        HTMLTemplatePro => sub {
            $ht->param(\%vars);
            my $body = [$ht->output()];
            return;
        },
        TT => sub {
            my $body = [''];
            $tt->process('index.tt', \%vars, \$body->[0]) or die $tt->error;
            return;
        },
    };
};

1;

__END__

=encoding UTF-8

=head1 NAME

Acme::Benchmarks::Module::TemplateEngine - Compare template engines

=head1 AUTHOR

Dai Okabayashi E<lt>bayashi@cpan.orgE<gt>


=head1 SEE ALSO

L<https://metacpan.org/source/SKAJI/Text-Xslate-v3.5.7/benchmark/include.pl>
