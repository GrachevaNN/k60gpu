git pull

echo ''
echo '------- Compiling main.c into main.o: mpicxx -O3 -c main.cpp  ------'
mpicxx -O3 -std=c++11 -c main.cpp
mpicxx -O3 -std=c++11 -c utils.cpp
mpicxx -O3 -std=c++11 -c cpuThreads.cpp
echo '-------- mpicxx -o myapp main.o -----'
mpicxx -o myapp2 main.o utils.o cpuThreads.o
echo '-------------'

echo '------- Starting myapp in 1 node with 4 cpu per node with maxtime by default (5 minutes) ------'
echo '------- mpirun -np 4 ./myapp2 --------'
mpirun -np 4 ./myapp2

echo '------- Task list: mps ---------'
mps

echo '------- Task list: pult t ---------'
pult t

echo '------- Status of executed task: mqtest myapp.1 --------'
mqtest myapp2.1

echo '------- End of run.sh ------'