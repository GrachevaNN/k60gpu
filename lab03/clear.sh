clear

echo '------ Stopping task myapp3.1: mcancel myapp3.1 -------'
mcancel myapp3.1

echo '------ Removing temporary files -------'
rm -r myapp3.*
rm *.o myapp3
echo '------ Temporary files removed ------'