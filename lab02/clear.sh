clear

echo '------- Stopping task myapp2.1: mcancel myapp2.1 -------'
mcancel myapp2.1

echo '------- Removing temporary files -------'
rm -r myapp2.*
rm *.o myapp2
echo '------- Temporary files removed -------'