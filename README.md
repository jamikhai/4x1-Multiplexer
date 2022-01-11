# 4x1 Multiplexer

This project is part of my initiative to accelerate my digital design knowledge by creating and implementing systems discussed at a theoretical level in classes to ultimately become proficient at RTL design.

# Theory:

A 4x1 Multiplexer (MUX) takes four different inputs and gives one of the inputs as the single output. This is determined by the select signal of the MUX, which in this case is 2 bits.

A 2x1 MUX takes two inputs and has a one bit select signal to choose between the inputs.

# Implementation:

Overall we need three 2x1 MUX to create a 4x1 MUX. The first layer of MUXs will take the four inputs (two each). Then both MUX's will output into the input of the last 2x1 MUX, which is the second layer. As well, only one select signal is needed for the first layer as the select signal on the second layer will determine which input is passed through.

![schematic](http://2.bp.blogspot.com/-zo8LsEYSjHI/U41sQ9iE_QI/AAAAAAAAATY/mhYs0opzEWA/s1600/mux.JPG)
