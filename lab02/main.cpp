#include <mpi.h>
#include "utils.h"

int main (int argc, char* argv[])
{
    int rank, size, provided;
    mpi_init(argc, argv, MPI_THREAD_FUNNELED, provided, rank, size);

    MPI_Finalize();
    return 0;
}


