// void * (*orig_malloc)(size_t size);


// void * malloc(size_t size){
//     if(!orig_malloc) orig_malloc = dlsym(RTLD_NEXT, "malloc");
//     printf("Hooked! malloc:size:%lu\n", size);
//     void *rev = orig_malloc(size);
//     madvise(rev, size, MADV_MERGEABLE);
//     return rev;
// }

// void * (*orig_brk)(void *addr);
// void * (*orig_sbrk)(signed long inc);

// void * brk(void *addr){
//     if(!orig_brk) orig_brk = dlsym(RTLD_NEXT, "brk");
//     printf("Hooked! brk:addr:%p\n", addr);
//     return orig_brk(addr);
// }


// void * sbrk(signed long inc){
//     if(!orig_sbrk) orig_sbrk = dlsym(RTLD_NEXT, "sbrk");
//     printf("Hooked! sbrk:addr:%ld\n", inc);
//     return orig_sbrk(inc);
// }

    // fprintf(stderr, "Hooked! mmap:start:%p, length:%lu, prot:%d, flags:%d, fd:%d, offset:%ld\n", start, length, prot, flags, fd, offset);
    // fprintf(stderr, "malloc(%ld) = %p\n", size, rev);



// #define _GNU_SOURCE
// #include <stdio.h>
// #include <sys/mman.h>
// #include <dlfcn.h>



// static void* (*orig_mmap)(void *, size_t , int , int , int , off_t)=NULL;

// static void mtrace_init(void)
// {
//     orig_mmap = dlsym(RTLD_NEXT, "mmap");
//     if (!orig_mmap) {
//         fprintf(stderr, "Error in `dlsym`: %s\n", dlerror());
//     }
// }



// void * mmap(void *start, size_t length, int prot, int flags, int fd, off_t offset){
//   if(!orig_mmap) mtrace_init();

//   void* rev = orig_mmap(start, length, prot, flags, fd, offset);
//   return rev;
// }