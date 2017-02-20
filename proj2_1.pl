#
# Description: Project 2 part 1
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
 		# of 'th' regardless of case.  If found replace with 'TH' and print
 		#
		$x =~ s/(th)/\U$1/gi;
		print $x;
}
print "\n";
