#!/usr/bin/env perl6
#main.p6

use lib '../lib';

# to test when MeasureModule not installed, do this vvv and adjust top lie of the .pm6 file 
#mv MeasureModule.pm6 MeasureModuleXXX.pm6
#comment out vvv
use MeasureModule;
#uncomment vvv
#use MeasureModuleXXX;

use PolygonsModule;

my $x = Measure.new( value => 10, unit => 'm' );
my $y = Measure.new( value => 20, unit => 'm' );

my $rect = Rectangle.new( width => $x, height => $y );
say $rect.area.Str;        #'200 m2'

