#define _GNU_SOURCE
#define SIZE 52428800


#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <string.h>
#include <errno.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <time.h>




int main(int argc, const char *argv[]) {
        char *filepath = "/home/bob/SKSM/link.txt"; // 매핑할 파일

        int fd;

        if((fd = open(filepath, O_RDONLY, (mode_t)0600)) == -1){
            fprintf(stderr, "OPEN ERROR: %s\n", strerror(errno));
            exit(EXIT_FAILURE);
        }


        char *map = mmap(0, SIZE, PROT_READ | PROT_WRITE | PROT_EXEC, MAP_PRIVATE, fd, 0);
        // char *mal = malloc(SIZE);
        // printf("%p\n", mal);
        // mal = realloc(mal, SIZE);

        // printf("orig_brk: %p\n", sbrk(0));
        // brk(sbrk(0)+4096);
        // printf("change_brk: %p\n", sbrk(0));

        // printf("%p\n", mal);

        if(map == MAP_FAILED) { 
            close(fd);
            fprintf(stderr, "MMAP ERROR: %s\n", strerror(errno));
            exit(EXIT_FAILURE);
        }



        for(int i=0; i<10; i++){
            printf("%d wait...%d min\n", getpid(), i);
            sleep(60);
        }

        munmap(map, SIZE);
        // free(mal);
        close(fd);
        return 0;
}