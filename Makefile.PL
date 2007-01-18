
use ExtUtils::MakeMaker;

WriteMakefile(
    'NAME'			=> 'XML::CommonNS',
    'VERSION_FROM'	=> 'CommonNS.pm',
    'PREREQ_PM'		=> { 'XML::NamespaceFactory' => 0 },
    'ABSTRACT_FROM' => 'CommonNS.pm',
    'AUTHOR'     	=> 'Chris Prather <chris@prather.org>',
);
