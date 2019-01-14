unit module MeasureModule;
#unit module MeasureModuleXXX;

class Measure is export {
    has $.value is rw; 
    has $.unit is rw; 

    method Real {
        $!value;
    }   
    method Str {
        "$!value $!unit";
    }   
    method multiply( $argument ) { 
        my $result = self;
        $result.value = $!value * $argument.value;
        $result.unit  = $!unit  ~ '2';
        return $result;
    }   
}

multi infix:<*> ( Measure:D $left, Measure:D $right ) is export {
    return $left.multiply( $right );
}

