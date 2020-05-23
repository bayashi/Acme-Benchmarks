# http://bit.ly/cpanfile
# http://bit.ly/cpanfile_version_formats
requires 'strict';
requires 'warnings';
requires 'Benchmarks';
requires 'Test::AllModules';

# Acme::Benchmarks::Module::Constants
requires 'constant';
requires 'Readonly';
requires 'Data::Lock';

# Acme::Benchmarks::Module::WebRouter
requires 'HTTP::Router';
requires 'Router::Simple';
requires 'Router::Boom';
requires 'Router::R3';

# Acme::Benchmarks::Module::TemplateEngine
requires 'Text::Xslate';
requires 'Text::MicroTemplate::Extended';
requires 'HTML::Template::Pro';
requires 'Template';

on 'configure' => sub {
    requires 'Module::Build' , '0.40';
    requires 'Module::Build::Pluggable';
    requires 'Module::Build::Pluggable::CPANfile';
};

on 'develop' => sub {
    requires 'Software::License';
    requires 'Test::Perl::Critic';
    requires 'Test::Pod';
    requires 'Test::NoTabs';
    requires 'Test::Vars';
    requires 'File::Find::Rule::ConflictMarker';
    requires 'File::Find::Rule::BOM';
};
