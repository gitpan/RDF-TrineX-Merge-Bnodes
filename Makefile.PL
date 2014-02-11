
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Merge blank nodes that obviously refer to the same resource",
  "AUTHOR" => "Jakob Vo\x{df}",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "RDF-TrineX-Merge-Bnodes",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "RDF::TrineX::Merge::Bnodes",
  "PREREQ_PM" => {},
  "TEST_REQUIRES" => {},
  "VERSION" => "0.1.0",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = ();


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



