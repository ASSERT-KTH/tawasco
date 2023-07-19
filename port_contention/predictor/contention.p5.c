int main() {

    // TODO Pin this process to core 0
    // Create port contention on port 5 with an asm code
    while(1) {
        __asm__(
            // Use a lot of VPBROADCASTD instructions 
            // to create port contention on port 5
            "VPBROADCASTD %xmm0, %ymm0\n"
        );

    }
    return 0;
}