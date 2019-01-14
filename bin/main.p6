#!/usr/bin/env perl6
#main.p6

use lib '../lib';
#use MeasureModule;
use MeasureModuleXXX;
use PolygonsModule;

my $x = Measure.new( value => 10, unit => 'm' );
my $y = Measure.new( value => 20, unit => 'm' );

my $rect = Rectangle.new( width => $x, height => $y );
say $rect.area.Str;        #'200 m2'

