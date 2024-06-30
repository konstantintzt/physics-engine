CXX = g++
CXXFLAGS = -std=c++17 -Wall

LIBS = -lglfw -lgLEW -framework OpenGL

INC = -I/opt/homebrew/opt/glfw/include -I/opt/homebrew/opt/glew/include

LDFLAGS = -L/opt/homebrew/opt/glfw/lib -L/opt/homebrew/opt/glew/lib

SRCS = main.cpp

OBJS = $(SRCS:.cpp=.o)

TARGET = test

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(OBJS) $(LDFLAGS) $(LIBS)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) $(INC) -c $< -o $@

clean:
	rm -f $(OBJS) $(TARGET)

	