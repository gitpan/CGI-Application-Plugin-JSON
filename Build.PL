use strict;
use warnings;
use Module::Build;
use lib './t/lib';

my $builder = Module::Build->new(
    module_name         => 'CGI::Application::Plugin::JSON',
    license             => 'perl',
    dist_author         => 'Michael Peters <mpeters@plusthree.com>',
    dist_version_from   => 'lib/CGI/Application/Plugin/JSON.pm',
    requires => {
        'Test::More'       => 0,
        'CGI::Application' => 4.00,
        'JSON'             => 0,
    },
    create_makefile_pl  => 'traditional',
    create_readme       => 1,
);

$builder->create_build_script();
