
#ifndef TEST_H
#	include "test.h"
#endif
 // C++ 调用C 函数
#ifndef HW_H
#	include "hw.h"
#endif
#include <stdio.h>
void do_test()
{
	printf("hw: %d\n", get_hw());
}