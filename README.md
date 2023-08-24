# Music-Synthesizer--Karplus-Strong-Algorithm

Hardware implementation method  

In this method we have used the Verilog language to implement the Karplus Strong algorithm. The verilog code was written based on the following block diagram.

![Screenshot 2023-08-24 133905](https://github.com/NiharGowdaS/Music-Synthesizer---Karplus-Strong-Algorithm/assets/77974814/fe6cefa2-9f43-4743-8b45-ead95b116a40)


Delay line and filter were first implemented as independent modules.Later, these modules were put together in the main module.Noise burst was provided in the main module
Audio signal generated by the Verilog code is written to a text file. The text file is converted to audio file using python.
