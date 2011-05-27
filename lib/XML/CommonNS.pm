package XML::CommonNS;
use strict;
use warnings;
use XML::NamespaceFactory qw();
use Exporter;
use vars qw($VERSION %NS @ISA @EXPORT_OK);
$VERSION = '0.06';
@ISA     = qw(Exporter);

sub BEGIN {
    %NS = (
        XML       => 'http://www.w3.org/XML/1998/namespace',
        XMLNS     => 'http://www.w3.org/2000/xmlns/',
        XLINK     => 'http://www.w3.org/1999/xlink',
        SVG       => 'http://www.w3.org/2000/svg',
        XHTML     => 'http://www.w3.org/1999/xhtml',
        XHTML2    => 'http://www.w3.org/2002/06/xhtml2',
        XFORMS    => 'http://www.w3.org/2002/xforms/cr',
        XMLEVENTS => 'http://www.w3.org/2001/xml-events',
        DC        => 'http://purl.org/dc/elements/1.1/',
        DC_TERMS  => 'http://purl.org/dc/terms/',
        RDF       => 'http://www.w3.org/1999/02/22-rdf-syntax-ns#',
        RDFS      => 'http://www.w3.org/2000/01/rdf-schema#',
        OWL       => 'http://www.w3.org/2002/07/owl#',
        FOAF      => 'http://xmlns.com/foaf/0.1/',
        REL       => 'http://purl.org/vocab/relationship/',
        RSS1      => 'http://purl.org/rss/1.0/',
        COMMENTS  => 'http://purl.org/net/rssmodules/blogcomments/',
        SYN       => 'http://purl.org/rss/1.0/modules/syndication/',
        RNG       => 'http://relaxng.org/ns/structure/1.0',
        XSD       => 'http://www.w3.org/2001/XMLSchema',
        XSI       => 'http://www.w3.org/2001/XMLSchema-instance',
        MATHML    => 'http://www.w3.org/1998/Math/MathML',
        XSLT      => 'http://www.w3.org/1999/XSL/Transform',
        XSLFO     => 'http://www.w3.org/1999/XSL/Format',
        SOAPENC11 => 'http://schemas.xmlsoap.org/soap/encoding/',
        SOAPENV11 => 'http://schemas.xmlsoap.org/soap/envelope/',
        SOAPENC12 => 'http://www.w3.org/2003/05/soap-encoding',
        SOAPENV12 => 'http://www.w3.org/2003/05/soap-envelope',
        WSDL11    => 'http://schemas.xmlsoap.org/wsdl/',
        WSDL12    => 'http://www.w3.org/2003/06/wsdl',
        GEONAMES  => 'http://www.geonames.org/ontology#',
        SKOS      => 'http://www.w3.org/2004/02/skos/core#',
        GEO       => 'http://www.w3.org/2003/01/geo/wgs84_pos#',
        DBP       => 'http://dbpedia.org/property/',
        SIOC      => 'http://rdfs.org/sioc/ns#',
        DBO       => 'http://dbpedia.org/ontology/',
        DC11      => 'http://purl.org/dc/elements/1.1/',
        DBPPROP   => 'http://dbpedia.org/property/',
        GR        => 'http://purl.org/goodrelations/v1#',
        DOAP      => 'http://usefulinc.com/ns/doap#',
        CONTENT   => 'http://purl.org/rss/1.0/modules/content/',
        WOT       => 'http://xmlns.com/wot/0.1/',
        RSS       => 'http://purl.org/rss/1.0/',
        DBPEDIA   => 'http://dbpedia.org/resource/',
        DCTERMS   => 'http://purl.org/dc/terms/',
        D2RQ      => 'http://www.wiwiss.fu-berlin.de/suhl/bizer/D2RQ/0.1#',
        GEN       => 'http://www.w3.org/2006/gen/ont#',
        NIE       => 'http://www.semanticdesktop.org/ontologies/2007/01/19/nie#',
        TEST2     => 'http://this.invalid/test2#',
        DCT       => 'http://purl.org/dc/terms/',
        ORG       => 'http://www.w3.org/ns/org#',
        VOID      => 'http://rdfs.org/ns/void#',
        VCARD     => 'http://www.w3.org/2006/vcard/ns#',
        AKT       => 'http://www.aktors.org/ontology/portal#',
        EX        => 'http://example.com/',
        HTTP      => 'http://www.w3.org/2006/http#',
        RECO      => 'http://purl.org/reco#',
        FB        => 'http://rdf.freebase.com/ns/',
        BIO       => 'http://purl.org/vocab/bio/0.1/',
        XFN       => 'http://vocab.sindice.com/xfn#',
        XF        => 'http://www.w3.org/2002/xforms/',
        AIR       => 'http://dig.csail.mit.edu/TAMI/2007/amord/air#',
        MEDIA     => 'http://purl.org/media#',
        OWLIM     => 'http://www.ontotext.com/trree/owlim#',
        SISM      => 'http://purl.oclc.org/NET/sism/0.1/',
        CFP       => 'http://sw.deri.org/2005/08/conf/cfp.owl#',
        EARL      => 'http://www.w3.org/ns/earl#',
        FN        => 'http://www.w3.org/2005/xpath-functions#',
        DCQ       => 'http://purl.org/dc/terms/',
        AFN       => 'http://jena.hpl.hp.com/ARQ/function#',
        CLD       => 'http://purl.org/cld/terms/',
        CV        => 'http://rdfs.org/resume-rdf/',
        DCMIT     => 'http://purl.org/dc/dcmitype/',
        VANN      => 'http://purl.org/vocab/vann/',
        OG        => 'http://opengraphprotocol.org/schema/',
        ICAL      => 'http://www.w3.org/2002/12/cal/ical#',
        SD        => 'http://www.w3.org/ns/sparql-service-description#',
        SWC       => 'http://data.semanticweb.org/ns/swc/ontology#',
        DAYS      => 'http://ontologi.es/days#',
        BOTANY    => 'http://purl.org/NET/biol/botany#',
        MU        => 'http://www.kanzaki.com/ns/music#',
        MUSIM     => 'http://purl.org/ontology/similarity/',
        CC        => 'http://creativecommons.org/ns#',
        TAG       => 'http://www.holygoat.co.uk/owl/redwood/0.1/tags/',
        REV       => 'http://purl.org/stuff/rev#',
        BIBO      => 'http://purl.org/ontology/bibo/',
        BIBLIO    => 'http://purl.org/net/biblio#',
        CAL       => 'http://www.w3.org/2002/12/cal/ical#',
        FACTBOOK  => 'http://www4.wiwiss.fu-berlin.de/factbook/ns#',
        MEMO      => 'http://ontologies.smile.deri.ie/2009/02/27/memo#',
        EVENT     => 'http://purl.org/NET/c4dm/event.owl#',
        DBR       => 'http://dbpedia.org/resource/',
        CS        => 'http://purl.org/vocab/changeset/schema#',
        DIR       => 'http://schemas.talis.com/2005/dir/schema#',
        XS        => 'http://www.w3.org/2001/XMLSchema#',
        GIVING    => 'http://ontologi.es/giving#',
        LOG       => 'http://www.w3.org/2000/10/swap/log#',
        AIISO     => 'http://purl.org/vocab/aiiso/schema#',
        AF        => 'http://purl.org/ontology/af/',
        BOOK      => 'http://purl.org/NET/book/vocab#',
        AD        => 'http://schemas.talis.com/2005/address/schema#',
        DCN       => 'http://www.w3.org/2007/uwa/context/deliverycontext.owl#',
        OK        => 'http://okkam.org/terms#',
        RDFG      => 'http://www.w3.org/2004/03/trix/rdfg-1/',
        CO        => 'http://purl.org/ontology/co/core#',
        XHV       => 'http://www.w3.org/1999/xhtml/vocab#',
        SWANDE    => 'http://purl.org/swan/1.2/discourse-elements/',
        MATH      => 'http://www.w3.org/2000/10/swap/math#',
        BILL      => 'http://www.rdfabout.com/rdf/schema/usbill/',
        RIF       => 'http://www.w3.org/2007/rif#',
        LOMVOC    => 'http://ltsc.ieee.org/rdf/lomv1p0/vocabulary#',
        CTAG      => 'http://commontag.org/ns#',
        SR        => 'http://www.openrdf.org/config/repository/sail#',
        SWANQ     => 'http://purl.org/swan/1.2/qualifiers/',
        OME       => 'http://purl.org/ontomedia/core/expression#',
        JDBC      => 'http://d2rq.org/terms/jdbc/',
        DAIA      => 'http://purl.org/ontology/daia/',
        MYSPACE   => 'http://purl.org/ontology/myspace#',
        TZONT     => 'http://www.w3.org/2006/timezone#',
        SWRC => 'http://ontoware.org/swrc/swrc/SWRCOWL/swrc_updated_v0.7.1.owl#',
        OSAG => 'http://www.ordnancesurvey.co.uk/ontology/AdministrativeGeography/v2.0/AdministrativeGeography.rdf#',
        IR   => 'http://www.ontologydesignpatterns.org/cp/owl/informationrealization.owl#',

    );

    while ( my ( $k, $v ) = each %NS ) {
        push @EXPORT_OK, '$' . $k;
    }
}

sub import {
    my $class = shift;
    my $pkg   = caller;
    my @opt   = @_;

    no strict 'refs';
    @opt = keys %NS if defined $opt[0] && $opt[0] eq ':all';
    for my $exp (@opt) {
        die "No namespace available for key $exp" unless exists $NS{$exp};
        __PACKAGE__->uri($exp);
        __PACKAGE__->export_to_level( 1, $class, '$' . $exp );
    }

    return 1;
}

sub uri {
    my ( $self, $exp ) = @_;
    no strict 'refs';
    return unless $NS{$exp};
    unless ( defined ${ __PACKAGE__ . "::$exp" } ) {
        ${ __PACKAGE__ . "::$exp" } = XML::NamespaceFactory->new( $NS{$exp} );
    }
    return ${ __PACKAGE__ . "::$exp" };
}

1;

=pod

=head1 NAME

XML::CommonNS - A list of commonly used namespaces

=head1 SYNOPSIS

	# import $RDF, $RDFS, $OWL, $DC
	use XML::CommonNS qw(RDF RDFS OWL DC);
	
	my %CONFIG = (
	    Namespaces    => {		    
	        rdf  => "$RDF",
	        rdfs => "$RDFS",
	        owl  => "$OWL",
	        foaf => "$FOAF",
	    },
	    ExpandQNames => 1,
	);
	
	# or the uri() method
	
	my $foaf = XML::CommonNS->uri('FOAF');
	
=head1 DESCRIPTION
All you need do to use this module is import the namespaces you

want from the list below. All of those will then become available
to you. They are XML::NamespaceFactory object and can thus be used
both as simple strings and as XML::NamespaceFactory objects. See
XML::NamespaceFactory for how that may help you.

I hesitated for a while before releasing this module. As a directory
of namespaces that can't (and almost certainly shouldn't) be 
exhaustive, it implies editorial decisions and I wasn't certain it
was CPAN worthy. However, after getting really tired of tracking 
down namespaces in every single small XML muning script I made,
I wrote it for myself. After a while using it, I don't see why others
wouldn't find it useful as well.

=head1 NAMESPACES

The currently available namespaces are listed below. This list is based on
previous experience as well as the top 100 namespaces used on prefix.cc.
Should you consider one worthy of addition (it needs to be common enough)
please simply notify me. Those marked with a start are subject to change. I
WILL change them when the corresponding specification changes.

    XML       => 'http://www.w3.org/XML/1998/namespace',
    XMLNS     => 'http://www.w3.org/2000/xmlns/',
    XLINK     => 'http://www.w3.org/1999/xlink',
    SVG       => 'http://www.w3.org/2000/svg',
    XHTML     => 'http://www.w3.org/1999/xhtml',
    XHTML2    => 'http://www.w3.org/2002/06/xhtml2',
    XFORMS    => 'http://www.w3.org/2002/xforms/cr',
    XMLEVENTS => 'http://www.w3.org/2001/xml-events',
    DC        => 'http://purl.org/dc/elements/1.1/',
    DC_TERMS  => 'http://purl.org/dc/terms/',
    RDF       => 'http://www.w3.org/1999/02/22-rdf-syntax-ns#',
    RDFS      => 'http://www.w3.org/2000/01/rdf-schema#',
    OWL       => 'http://www.w3.org/2002/07/owl#',
    FOAF      => 'http://xmlns.com/foaf/0.1/',
    REL       => 'http://purl.org/vocab/relationship/',
    RSS1      => 'http://purl.org/rss/1.0/',
    COMMENTS  => 'http://purl.org/net/rssmodules/blogcomments/',
    SYN       => 'http://purl.org/rss/1.0/modules/syndication/',
    RNG       => 'http://relaxng.org/ns/structure/1.0',
    XSD       => 'http://www.w3.org/2001/XMLSchema',
    XSI       => 'http://www.w3.org/2001/XMLSchema-instance',
    MATHML    => 'http://www.w3.org/1998/Math/MathML',
    XSLT      => 'http://www.w3.org/1999/XSL/Transform',
    XSLFO     => 'http://www.w3.org/1999/XSL/Format',
    SOAPENC11 => 'http://schemas.xmlsoap.org/soap/encoding/',
    SOAPENV11 => 'http://schemas.xmlsoap.org/soap/envelope/',
    SOAPENC12 => 'http://www.w3.org/2003/05/soap-encoding',
    SOAPENV12 => 'http://www.w3.org/2003/05/soap-envelope',
    WSDL11    => 'http://schemas.xmlsoap.org/wsdl/',
    WSDL12    => 'http://www.w3.org/2003/06/wsdl',
    GEONAMES  => 'http://www.geonames.org/ontology#',
    SKOS      => 'http://www.w3.org/2004/02/skos/core#',
    GEO       => 'http://www.w3.org/2003/01/geo/wgs84_pos#',
    DBP       => 'http://dbpedia.org/property/',
    SIOC      => 'http://rdfs.org/sioc/ns#',
    DBO       => 'http://dbpedia.org/ontology/',
    DC11      => 'http://purl.org/dc/elements/1.1/',
    DBPPROP   => 'http://dbpedia.org/property/',
    GR        => 'http://purl.org/goodrelations/v1#',
    DOAP      => 'http://usefulinc.com/ns/doap#',
    CONTENT   => 'http://purl.org/rss/1.0/modules/content/',
    WOT       => 'http://xmlns.com/wot/0.1/',
    RSS       => 'http://purl.org/rss/1.0/',
    DBPEDIA   => 'http://dbpedia.org/resource/',
    DCTERMS   => 'http://purl.org/dc/terms/',
    D2RQ      => 'http://www.wiwiss.fu-berlin.de/suhl/bizer/D2RQ/0.1#',
    GEN       => 'http://www.w3.org/2006/gen/ont#',
    NIE       => 'http://www.semanticdesktop.org/ontologies/2007/01/19/nie#',
    TEST2     => 'http://this.invalid/test2#',
    DCT       => 'http://purl.org/dc/terms/',
    ORG       => 'http://www.w3.org/ns/org#',
    VOID      => 'http://rdfs.org/ns/void#',
    VCARD     => 'http://www.w3.org/2006/vcard/ns#',
    AKT       => 'http://www.aktors.org/ontology/portal#',
    EX        => 'http://example.com/',
    HTTP      => 'http://www.w3.org/2006/http#',
    RECO      => 'http://purl.org/reco#',
    FB        => 'http://rdf.freebase.com/ns/',
    BIO       => 'http://purl.org/vocab/bio/0.1/',
    XFN       => 'http://vocab.sindice.com/xfn#',
    XF        => 'http://www.w3.org/2002/xforms/',
    AIR       => 'http://dig.csail.mit.edu/TAMI/2007/amord/air#',
    MEDIA     => 'http://purl.org/media#',
    OWLIM     => 'http://www.ontotext.com/trree/owlim#',
    SISM      => 'http://purl.oclc.org/NET/sism/0.1/',
    CFP       => 'http://sw.deri.org/2005/08/conf/cfp.owl#',
    EARL      => 'http://www.w3.org/ns/earl#',
    FN        => 'http://www.w3.org/2005/xpath-functions#',
    DCQ       => 'http://purl.org/dc/terms/',
    AFN       => 'http://jena.hpl.hp.com/ARQ/function#',
    CLD       => 'http://purl.org/cld/terms/',
    CV        => 'http://rdfs.org/resume-rdf/',
    DCMIT     => 'http://purl.org/dc/dcmitype/',
    VANN      => 'http://purl.org/vocab/vann/',
    OG        => 'http://opengraphprotocol.org/schema/',
    ICAL      => 'http://www.w3.org/2002/12/cal/ical#',
    SD        => 'http://www.w3.org/ns/sparql-service-description#',
    SWC       => 'http://data.semanticweb.org/ns/swc/ontology#',
    DAYS      => 'http://ontologi.es/days#',
    BOTANY    => 'http://purl.org/NET/biol/botany#',
    MU        => 'http://www.kanzaki.com/ns/music#',
    MUSIM     => 'http://purl.org/ontology/similarity/',
    CC        => 'http://creativecommons.org/ns#',
    TAG       => 'http://www.holygoat.co.uk/owl/redwood/0.1/tags/',
    REV       => 'http://purl.org/stuff/rev#',
    BIBO      => 'http://purl.org/ontology/bibo/',
    BIBLIO    => 'http://purl.org/net/biblio#',
    CAL       => 'http://www.w3.org/2002/12/cal/ical#',
    FACTBOOK  => 'http://www4.wiwiss.fu-berlin.de/factbook/ns#',
    MEMO      => 'http://ontologies.smile.deri.ie/2009/02/27/memo#',
    EVENT     => 'http://purl.org/NET/c4dm/event.owl#',
    DBR       => 'http://dbpedia.org/resource/',
    CS        => 'http://purl.org/vocab/changeset/schema#',
    DIR       => 'http://schemas.talis.com/2005/dir/schema#',
    XS        => 'http://www.w3.org/2001/XMLSchema#',
    GIVING    => 'http://ontologi.es/giving#',
    LOG       => 'http://www.w3.org/2000/10/swap/log#',
    AIISO     => 'http://purl.org/vocab/aiiso/schema#',
    AF        => 'http://purl.org/ontology/af/',
    BOOK      => 'http://purl.org/NET/book/vocab#',
    AD        => 'http://schemas.talis.com/2005/address/schema#',
    DCN       => 'http://www.w3.org/2007/uwa/context/deliverycontext.owl#',
    OK        => 'http://okkam.org/terms#',
    RDFG      => 'http://www.w3.org/2004/03/trix/rdfg-1/',
    CO        => 'http://purl.org/ontology/co/core#',
    XHV       => 'http://www.w3.org/1999/xhtml/vocab#',
    SWANDE    => 'http://purl.org/swan/1.2/discourse-elements/',
    MATH      => 'http://www.w3.org/2000/10/swap/math#',
    BILL      => 'http://www.rdfabout.com/rdf/schema/usbill/',
    RIF       => 'http://www.w3.org/2007/rif#',
    LOMVOC    => 'http://ltsc.ieee.org/rdf/lomv1p0/vocabulary#',
    CTAG      => 'http://commontag.org/ns#',
    SR        => 'http://www.openrdf.org/config/repository/sail#',
    SWANQ     => 'http://purl.org/swan/1.2/qualifiers/',
    OME       => 'http://purl.org/ontomedia/core/expression#',
    JDBC      => 'http://d2rq.org/terms/jdbc/',
    DAIA      => 'http://purl.org/ontology/daia/',
    MYSPACE   => 'http://purl.org/ontology/myspace#',
    TZONT     => 'http://www.w3.org/2006/timezone#',
    SWRC => 'http://ontoware.org/swrc/swrc/SWRCOWL/swrc_updated_v0.7.1.owl#',
    OSAG => 'http://www.ordnancesurvey.co.uk/ontology/AdministrativeGeography/v2.0/AdministrativeGeography.rdf#',
    IR   => 'http://www.ontologydesignpatterns.org/cp/owl/informationrealization.owl#',

=head1 METHODS

=over

=item uri
	
	Allows you to directly retrieve one of the URI objects without doing the import() dance.
	
=back

=head1 AUTHOR

Chris Prather, E<lt>chris@prather.orgE<gt>
Robin Berjon, E<lt>robin.berjon@expway.frE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright 2003 by Robin Berjon

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself. 

=cut
