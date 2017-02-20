#
# Filename: proj2_2.pl
#
# Description: Project 2 part 2
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
 		# of a period, comma, or question mark at the end of the line
 		#
		if($x =~ m/(.*it.*)((\.)|(,)|(\?))/) {
			@what_to_print = split(' it ', ${1});
			print "\n$what_to_print[1]${2}\n";
		}
}
print "\n";

