package Acme::Benchmarks::Module::WebRouter;
use strict;
use warnings;
use Benchmarks sub {
    use HTTP::Router;
    use Router::Simple;
    use Router::Boom;
    use Router::R3;

    my $r_path   = '/';
    my $r_params = { controller => 'Root', action => 'index' };

    my $http_router = HTTP::Router->new;
    $http_router->add_route($r_path => (params => $r_params));

    my $simple = Router::Simple->new;
    $simple->connect($r_path, $r_params);

    my $boom = Router::Boom->new;
    $boom->add($r_path, $r_params);

    my $r3 = Router::R3->new($r_path => $r_params);

    {
        http_router => sub {
            $http_router->match($r_path)->params;
        },
        simple => sub {
            $simple->match($r_path);
        },
        boom => sub {
            $boom->match($r_path);
        },
        r3 => sub {
            $r3->match($r_path);
        },
    };
};

1;

__END__

=encoding UTF-8

=head1 NAME

Acme::Benchmarks::Module::WebRouter - Compare routers

=head1 AUTHOR

Dai Okabayashi E<lt>bayashi@cpan.orgE<gt>
