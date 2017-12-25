#include <moderngpu/transform.hxx>

using namespace std ; 

int main(int argc, char** argv){
	
	standard_context context ; 
	trandsform([]MGPU_DEVICE(int index){
		printf("hello GPU from thread %d\n" , index ) ;
	} , 5, context ) ;
	context.synchronize() ; 
	return 0 ; 

}
