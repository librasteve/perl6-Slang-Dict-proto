unit module PolygonsModule;

#If MeasureModule present...
#use MeasureModule;                             #works
#require MeasureModule qw{&infix:<*>};          #works
try require MeasureModule qw{&infix:<*>};      #works

#try require MeasureModule;
#->Cannot resolve caller Numeric(MeasureModule::Measure: ); none of these signatures match: (Mu:U \v: *%_) in method area

#my &infix:<*> := &MeasureModule::infix:<*> if try require MeasureModule;
#->Cannot invoke this object (REPR: Null; VMNull)

class Rectangle is export {
    has $.width;
    has $.height;

    method area {
        $!width * $!height;     #provides operator overload for Measure * Measure
    }
}
