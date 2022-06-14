# dehashed2userpass
converts output from dehashed queries into a userpass file. takes the email domain as an arg, will generate false positives and miss some stuff so review is good.

Can almost certainly be improved by just parsing JSON in an actually smart way.

Usage: ./dehashed2userpass.sh inputfilename companyname.com
