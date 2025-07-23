#include "registers.h"
#include "utils.h"
#include "instructions_encoder_R_format.h"

#include <stdio.h>

int main(int argc , char* argv[]){
    // handle case when comamnd line arguments are not used appropriately

    if(argc != 3){
        fprintf(stderr , "Usage: %s <input_file_name> <output_file_name>" , argv[0]);
        return 1;
    }

    FILE *infile = fopen(argv[1] , "r");

    if(!infile){
        fprintf(stderr , "Cannot open input file mentioned. Please try again.");
        return 1;
    }

    FILE *outfile = fopen(argv[2] , "a");
    if(!outfile){
        fprintf(stderr , "Cannot open or create mentioned output file. Please try again.");
        return 1;
    }

    
}
