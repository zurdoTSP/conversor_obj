
#include <iostream>
#include <cstdlib>
using namespace std;

int main(int argc, char *argv[])
{
    float A[20][20], B[20][20], C[20][20];
    float k, m, n;


	k=4;
	m=4;
	n=1;

    /*for(int i=0; i<k; ++i)
        for(int j=0; j<m; ++j)
        {
            cout<<"Ingrese valor para A["<<i<<"]["<<j<<"]: ";
            cin>>A[i][j];
        }*/
	A[1][1]=atof(argv[4]);
	A[0][0]=atof(argv[5]);
	A[2][2]=atof(argv[6]);
	A[3][3]=1;
	A[0][1]=0;
	A[0][2]=0;
	A[1][0]=0;
	A[1][2]=0;
	A[2][0]=0;
	A[2][1]=0;
	A[3][0]=0;
	A[3][1]=0;
	A[3][2]=0;
    ///////////////CERVEZA///////////////
	A[0][3]=0;
	A[1][3]=0;
	A[2][3]=0;


	B[0][0]=atof(argv[1]);
	B[1][0]=atof(argv[2]);
	B[2][0]=atof(argv[3]);
	B[3][0]=1;
    // Inicializamos la matriz C.
    for(int i=0; i<k; ++i)
        for(int j=0; j<n; ++j)
            C[i][j] = 0;

    // Generamos la matriz C.
    for(int i=0; i<k; ++i)
        for(int j=0; j<n; ++j)
            for(int z=0; z<m; ++z)
                C[i][j] += A[i][z] * B[z][j];


    for(int i=0; i<k-1; ++i)
    {
        for(int j=0; j<n; ++j)
        {
            cout<<C[i][j]<<" ";
        }
        cout<<endl;
    }

    return 0;
}

