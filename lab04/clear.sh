clear

echo '------ Stopping task myapp4.1: mcancel myapp4.1 -------'
mcancel myapp4.1

echo '------ Removing temporary files -------'
rm -r myapp4.*
rm *.o myapp4
echo '------ Temporary files removed ------'