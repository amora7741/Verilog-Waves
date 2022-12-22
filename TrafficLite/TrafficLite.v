module TrafficLite (EWCar, NSCar, EWLite, NSLite, clock);

input EWCar, NSCar, clock;
output EWLite, NSLite;

reg state;
initial state = 0;

assign NSLite = ~state;
assign EWLite = state;

always @(posedge clock)
    case(state)
        0: state = EWCar;
        1: state = NSCar;
    endcase
endmodule