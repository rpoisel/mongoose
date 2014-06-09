local_dir     := mongoose
local_lib     := $(local_dir)/libmongoose.a
local_program := 
local_inc     := mongoose
local_src     := $(addprefix $(DIR_SRC)/$(local_dir)/,mongoose.c)
local_objs  := $(addprefix $(DIR_OBJ)/,$(subst .c,.o,$(local_src)))
local_dep   := 

libraries   += $(local_lib)
sources     += $(local_src)
includes    += $(local_inc)
objects     += $(local_objs)
programs    += $(local_program)

$(local_lib): $(local_objs)
	$(AR) $(ARFLAGS) $@ $^

