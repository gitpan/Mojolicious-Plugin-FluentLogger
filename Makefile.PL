use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Mojolicious::Plugin::FluentLogger',
    AUTHOR              => q{Tatsuya FUKATA <tatsuya.fukata@gmail.com >},
    VERSION_FROM        => 'lib/Mojolicious/Plugin/FluentLogger.pm',
    ABSTRACT_FROM       => 'lib/Mojolicious/Plugin/FluentLogger.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
        'Fluent::Logger' => 0.07,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Mojolicious-Plugin-FluentLogger-*' },
);
