#define _GNU_SOURCE
#include <stdio.h>
#include <sys/mman.h>
#include <dlfcn.h>



static void* (*orig_mmap)(void *, size_t , int , int , int , off_t)=NULL;

static void mtrace_init(void)
{
    orig_mmap = dlsym(RTLD_NEXT, "mmap");
    if (!orig_mmap) {
        fprintf(stderr, "Error in `dlsym`: %s\n", dlerror());
    }
}



void * mmap(void *start, size_t length, int prot, int flags, int fd, off_t offset){
  if(!orig_mmap) mtrace_init();

  void* rev = orig_mmap(start, length, prot, flags, fd, offset);
  madvise(rev, length, MADV_MERGEABLE);
  return rev;
}