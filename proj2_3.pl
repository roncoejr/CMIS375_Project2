#
# /usr/bin/perl -w
#
# Filename: proj2_3.pl
#
# Description: Project 2 part 3
# By: Ronald Coe, Jr.
# CMIS 375
#

#
#
# Open the file passed to us from the command line
#
open (INFO, "<$ARGV[0]");

#
#
# Loop through the contents of the file and look for the string
# to replace
#
 while($x = <INFO>) {
 		#
 		#
 		# Search the string gotten from the input file for occurances
 		# of words that begin with the letter "p"
 		#
		if($x =~ /^(\/)?p[a-zA-Z]\w*(\/)?|\b([a-z]*p)\b/i) {
		#	print "\n$1$2$3\n";
			print "\n$&\n";
		} elsif ($x =~ /\bp[a-zA-Z]*\b/) {
			print "\n$&\n";
		}
}
print "\n";

