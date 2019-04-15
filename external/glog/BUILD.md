# Notes on building glog #

I'm having trouble building glog w/gflags. Currently, this is made possible via several filthy hacks.
The hacks consist of commenting out the final lines of code in glog's CMakeLists.txt. The export() instructions
appear to cause the error. I'm not entirely sure why.
