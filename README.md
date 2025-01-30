# 4-2_Priority_Encoder
A 4 to 2 priority encoder has 4 inputs: Y3, Y2, Y1 & Y0, and 2 outputs: A1 & A0. Here, the input, Y3 has the highest priority, whereas the input, Y0 has the lowest priority. In this case, even if more than one input is ‘1’ at the same time, the output will be the (binary) code corresponding to the input, which is having higher priority. The truth table for the priority encoder is as follows.
    INPUTS             OUTPUTS       
E	Y3	Y2	Y1	Y0	|  A1	A0
0 0 	0	  0	  0	  |   X	X
1	0	  0	  0	  1	  |   0	0
1	0	  0	  1	  X	  |   0	1
1	0	  1	  X	  X	  |   1	0
1	1	  X	  X	  X	  |   1	1
