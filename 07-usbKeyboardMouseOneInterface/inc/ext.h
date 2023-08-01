#ifndef __EXT_H__
#define __EXT_H__
#include <8052.h>
#include "types.h"

#define EXT_TRIGGER_MODE_LOW        0
#define EXT_TRIGGER_MODE_FALLING    1

void init_EXT0(uint8 mode);

#endif