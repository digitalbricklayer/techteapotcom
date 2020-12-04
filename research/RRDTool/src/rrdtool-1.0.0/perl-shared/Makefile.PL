use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'         => 'RRDs',
    'VERSION_FROM' => 'RRDs.pm', # finds $VERSION
    'OPTIMIZE'     => '-g',
    'INC'          => '-I../src -I../gd1.3',
    'depend'	   => {'RRDs.c' => '../src/librrd.a'},
    # where to look for the necessary libraries 
    # Perl will figure out which one is valid
    'LIBS'         => [ '-L../src -lrrd  -L../gd1.3 -lrrd_gd -L../libpng-1.0.3 -lrrd_png -L../zlib-1.1.3 -lrrd_z -lm' ],
    'realclean'    => {FILES => 't/demo?.rrd t/demo?.gif' }
);
