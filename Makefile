TARGET      := gta5_menu.elf
OBJS        := main.o menu.o drawing.o memory.o

CC          := clang
CXX         := clang++
STRIP       := llvm-strip

CFLAGS      := -O3 -Wall -fPIC -ffreestanding -fno-builtin
CXXFLAGS    := $(CFLAGS) -std=c++17 -fno-exceptions -fno-rtti
LDFLAGS     := -shared -nostdlib -L$(OO_PS4_TOOLCHAIN)/orbis/lib

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CXX) $(LDFLAGS) $(OBJS) -o $@
	$(STRIP) $@

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -rf $(Target) *.o
