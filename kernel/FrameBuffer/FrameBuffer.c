#include "kernel/FrameBuffer/FrameBuffer.h"
#include "kernel/driver_manager/GPU.h"
int main(){
struct framebufferdata{
int *FrameBufferStart;
int *GpuMemoryAddress;
int *FrameBufferMemoryArray[];
int *height;
int *weight;
};
struct framebufferdata framebufferdata;
framebufferdata.GpuMemoryAddress = &GpuData.*GpuMemoryaddress;
framebufferdata.*FrameBufferMemoryArray[] = &GpuData.GpuVramSize; //I FUCKING HATE THIS STUPID FUCKING OS CODING ALL OF THIS IS A FUCKING PAIN GOD WHY
}
