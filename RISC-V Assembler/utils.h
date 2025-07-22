#ifndef UTILS_H
#define UTILS_H

#include <stdio.h>
#include <string.h>


// Define an enum that maps 4-bit binary strings to their hexadecimal equivalent
typedef enum {
    BINARY_0000 = 0,
    BINARY_0001 = 1,
    BINARY_0010 = 2,
    BINARY_0011 = 3,
    BINARY_0100 = 4,
    BINARY_0101 = 5,
    BINARY_0110 = 6,
    BINARY_0111 = 7,
    BINARY_1000 = 8,
    BINARY_1001 = 9,
    BINARY_1010 = 10, // A
    BINARY_1011 = 11, // B
    BINARY_1100 = 12, // C
    BINARY_1101 = 13, // D
    BINARY_1110 = 14, // E
    BINARY_1111 = 15  // F

} BinaryToHex;

const char* get_hexadecimal_num_from_binary(const char* binary){

    static char hex_string[9];
    int len = strlen(binary);
    int hex_index = 0;

    // output to stderr console about the binary string
    if(len%4 != 0){
        fprintf(stderr, "Error: Binary number length is not a multiple of 4\n");
        return NULL;
    }

    // Process each 4-bit chunk of the binary string
    for (int i = 0; i < len; i += 4) {
        char chunk[5] = {0};  // Temporary 4-bit string, 5 for null-terminator
        strncpy(chunk, &binary[i], 4);

        // Convert 4-bit binary chunk to hexadecimal using enum
        BinaryToHex bin_to_hex;
        if (strcmp(chunk, "0000") == 0) {
            bin_to_hex = BINARY_0000;
        }
        else if (strcmp(chunk, "0001") == 0){
             bin_to_hex = BINARY_0001;
        }
        else if (strcmp(chunk, "0010") == 0){
             bin_to_hex = BINARY_0010;
        }
        else if (strcmp(chunk, "0011") == 0){
             bin_to_hex = BINARY_0011;
        }
        else if (strcmp(chunk, "0100") == 0) {
            bin_to_hex = BINARY_0100;
        }

        else if (strcmp(chunk, "0101") == 0) {
            bin_to_hex = BINARY_0101;
        }
        else if (strcmp(chunk, "0110") == 0) {
            bin_to_hex = BINARY_0110;
        }
        else if (strcmp(chunk, "0111") == 0) {
            bin_to_hex = BINARY_0111;
        }
        else if (strcmp(chunk, "1000") == 0) {
            bin_to_hex = BINARY_1000;
        }
        else if (strcmp(chunk, "1001") == 0) {
            bin_to_hex = BINARY_1001;
        }
        else if (strcmp(chunk, "1010") == 0) {
            bin_to_hex = BINARY_1010;
        }
        else if (strcmp(chunk, "1011") == 0) {
            bin_to_hex = BINARY_1011;
        }
        else if (strcmp(chunk, "1100") == 0) {
            bin_to_hex = BINARY_1100;
        }
        else if (strcmp(chunk, "1101") == 0) {
            bin_to_hex = BINARY_1101;
        }
        else if (strcmp(chunk, "1110") == 0) {
            bin_to_hex = BINARY_1110;
        }
        else if (strcmp(chunk, "1111") == 0) {
            bin_to_hex = BINARY_1111;
        }
        else {
            // If chunk is invalid
            fprintf(stderr, "Error: Invalid binary chunk: %s\n", chunk);
            return NULL;
        }
        // add each character of chunk using the loop
        hex_string[hex_index++] = "0123456789ABCDEF"[bin_to_hex];

    }

        
        // null terminator added
        hex_string[hex_index] = '\0';

        return hex_string;


}


#endif