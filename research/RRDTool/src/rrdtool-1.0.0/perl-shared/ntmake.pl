use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'	=> 'RRD',
    'VERSION_FROM' => 'RRD.pm', 
    'DEFINE'	=> '-D_DEBUG -DWIN32 -D_CONSOLE',     
    'OPTIMIZE' => '-W3 -MLd',
    'INC'	=> '-I../src/ -I../gd1.2',    
    #'LIBS' => ['-L../src/debug -lrrd.lib  -L../gd1.2/debug -lgd.lib'],
	'LIBC' => 'libc.lib',
    'MYEXTLIB'  => '../src/release/rrd.lib ../gd1.2/release/gd.lib'
);
