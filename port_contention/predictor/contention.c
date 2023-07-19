int main() {

    // TODO Pin this process to core 0
    // Create port contention on port 1 with an asm code
    while(1) {
        __asm__(
            // Use a lot of popcnt instructions 
            // to create port contention on port 1
            "popcnt %rax, %rax\n"
        );

    }
    return 0;
}