:: Info at http://www.dostips.com/forum/viewtopic.php?f=3&t=6044

:: Substitute "blue" for every occurrence of the word "red" within a file.
:: Changes are made directly to the file.
jrepl "\bred\b" "blue" /f test.txt /o -

:: Open documentation
jrepl /?

:: Find and replace string between tags in .htm or .mht or .html documents
type test.txt | jrepl "=?\r?\n" "" /m | jrepl "<title>(.*?)</title>" "$1" /jmatch /m
type test.txt | jrepl "[\|\?\:\=\\]" "" /m | jrepl "<title>(.*?)</title>" "$1" /jmatch /m >output.txt
