unit module PolygonsModule;

#use MeasureModule;                #only if Measure is installed
#require MeasureModule;
#require MeasureModule qw{Measure &infix:<*>};
my $load-ok = try require MeasureModuleXXX;                  
say "$load-ok";
#iamerejh
#try require MeasureModule;                  say $!;
#try require MeasureModule qw{&infix:<*>};  #say $!;

class Rectangle is export {
    has $.width;
    has $.height;

    method area {
        $!width * $!height;     #provides operator overload for Measure * Measure
    }
}
