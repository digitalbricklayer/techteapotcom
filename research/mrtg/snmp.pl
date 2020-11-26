news.utdallas.edu!hermes.chpc.utexas.edu!cs.utexas.edu!sun-barr!news2me.EBay.Sun.COM!seven-up.East.Sun.COM!sungy!news.Sweden.Sun.COM!swippy!seunet!sunic!seunet!pipex!gate.demon.co.uk!demon!cnam.cnam.fr!bortz Wed Feb 24 20:45:59 CST 1993

On Monday 22 February 93, at 10 h 15, the keyboard of Stephane
Bortzmeyer <bortzmeyer@cnam.cnam.fr> wrote:

> Does anyone know a way to send SNMP requests from Perl?

Thanks to all those who searched. It appears there are three solutions:

- the very last version of Tricklet has a Perl interface. Tricklet is available 
from dnpap.et.tudelft.nl. The official version (which is a really nice tool to 
make SNMP request from shell scripts) is in pub/Tricklet/tricklet.1.4.tar.Z. A 
beta-version (which includes the Perl interface) is in pub/btng/trcklt3b.tar.Z. 
Thanks for the DNPAP group of the Delft University of Technology which produces 
so many useful network programs.

- there is a Perl interface for the CMU's SNMP package. The CMU stuff is 
available from lancaster.andrew.cmu.edu in pub/cmu-snmp1.0.tar. The Perl 
interface can be obtained from its author, Guy Streeter 
<gmstreet@guy.b30.ingr.com>. 

- there is also a commercial solution with the SMILE (Secure hierarchical network 
Management in LAN Environment) package. Contact <smile@ira.uka.de> for details.

I'm more accustomed to Tricklet and therefore will use it.

Thanks again to all the helpful people on the Net and specially to Guenther 
Schreiner <guenther@ira.uka.de> and Hal R. Pomeranz <pomeranz@nas.nasa.gov>.

Stephane Bortzmeyer           Conservatoire National des Arts et Metiers
bortzmeyer@cnam.cnam.fr       Laboratoire d'Informatique
                              292, rue Saint-Martin			
tel: +33 (1) 40 27 27 31      75141 Paris Cedex 03
fax: +33 (1) 40 27 27 72      France	

"C'est la nuit qu'il est beau de croire a la lumiere." E. Rostand


