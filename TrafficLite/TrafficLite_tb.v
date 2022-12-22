`include "TrafficLite.v"

module TrafficLite_tb;

reg EWCar, NSCar, clock, state;
wire EWLite, NSLite;

TrafficLite uut (
    .EWCar(EWCar),
    .NSCar(NSCar),
    .clock(clock),
    .EWLite(EWLite),
    .NSLite(NSLite)
);

initial 
    begin
        $dumpfile("TrafficLite.vcd");
        $dumpvars(0, TrafficLite_tb);
        NSCar = 0; EWCar = 0; clock = 1;

        #60;
        NSCar = 0; EWCar = 1;

        #60;
        NSCar = 1; EWCar = 0;

        #60;
        NSCar = 1; EWCar = 1;

        #60;
        NSCar = 0; EWCar = 0;

        #60;
        NSCar = 0; EWCar = 1;

        #60;
        NSCar = 1; EWCar = 0;

        #60;
        NSCar = 1; EWCar = 1;

        #60;
        NSCar = 0; EWCar = 0;

        #60;

        $finish;
    end

always
    #30 clock = ~clock;
endmodule