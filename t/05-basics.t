
use Test;
BEGIN { plan tests => 5 };
use XML::CommonNS qw(SVG XHTML2 RNG);
ok(1);

ok( $RNG 	eq "http://relaxng.org/ns/structure/1.0" );
ok( $SVG 	eq "http://www.w3.org/2000/svg" );
ok( $XHTML2 eq "http://www.w3.org/2002/06/xhtml2" );

ok( $SVG->extensionsDef eq "{http://www.w3.org/2000/svg}extensionsDef" );
