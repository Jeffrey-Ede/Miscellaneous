#include <iostream>
using std::cout;
using std::cin;
using std::endl;

int num_paths(int const rows, int const cols);
void travel(int i, int j, int *paths, int const rows, int const cols);

int main(){

	int paths = num_paths(20, 20);
	cout << paths << endl;

	return 0;
}

// Calculate number of paths in rows x cols grid
int num_paths(int const rows, int const cols){

	int paths = 0;
	int i = 0, j= 0;

	travel(i, j, &paths, rows, cols);

	return paths;
}


// Travel along paths, incrementing the path counter and position
void travel(int i, int j, int *paths, int const rows, int const cols){

	if(i<rows){
		travel(i+1, j, paths, rows, cols);
		if(j<cols){
			travel(i, j+1, paths, rows, cols);
		}
	}else{
		if(j<cols){
			travel(i, j+1, paths, rows, cols);
		}else{
			*paths = *paths+1;
		}
	}
}
