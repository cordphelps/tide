#!/bin/bash
# 

# // curl -s http://www.zusslin.com/en/valentin-zusslin-alsace-wine/ | node strip.js | grep -v "    " | more 

# 

# curl -s $1 | node strip.js | node strip-indent.js | grep -v "    " | more
curl -s $1 | 

node strip.js |

grep -v '{' |
grep -v '}' |
grep -v '!important' |
grep -v '@media' |
grep -v 'color:' |
grep -v 'background' |
grep -v 'img.' |

grep -v 'position:' |
grep -v 'width:' |
grep -v 'height:' |
grep -v 'top:' |
grep -v 'left:' |
grep -v 'margin:' |
grep -v 'padding:' |
grep -v 'border-radius:' |
grep -v 'border-top:' |
grep -v 'border-right:' |
grep -v 'z-index:' |
grep -v 'outline:' |
grep -v 'margin-top:' |
grep -v 'margin-left:' |
grep -v '\-webkit' |

#
# looking for the non-breaking characters
# https://www.w3schools.com/html/html_entities.asp
# http://www.regular-expressions.info/quickstart.html
sed 's/&nbsp/ /g' |
sed 's/#8209/ /g' |
sed 's/&#160/ /g' |
sed 's/&amp/ /g' |
sed 's/&copy/ /g' |
sed 's/&reg/ /g' |

sed 's/:/ /g' |
sed 's/;/ /g' |
sed 's/,/ /g' |
sed 's/\./ /g' |
sed 's/\*/ /g' |
sed 's/ - / /g' |


#
# https://en.wikipedia.org/wiki/Tr_(Unix)
# http://www.canbike.org/information-technology/sed-delete-carriage-returns-and-linefeeds-crlf.html
# trying to get rid of formfeed  
# good ascii table http://donsnotes.com/tech/charsets/ascii.html
tr -d '\f' |
tr -d '\t' |
tr -d '\013' |
tr -d '\169' |   # another version of the copyright symbol
tr -d '\r' | 
# tr -s '\n'    # replaces sequences of one or more newline characters with a single newline
tr -s '\n' |
tr -s ' ' 




