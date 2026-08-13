`timescale 1ns/1ps

module parity_generator_tb;

    reg  [3:0] data;
    wire       parity;

    // Instantiate the DUT
    parity_generator uut (
        .data(data),
        .parity(parity)
    );

    initial begin
        $display("======================================");
        $display("       4-BIT PARITY GENERATOR");
        $display("======================================");
        $display(" Time    Data    Parity");
        $display("--------------------------------------");

        data = 4'b0000;
        #10;
        $display(" %0t    %b       %b", $time, data, parity);

        data = 4'b0001;
        #10;
        $display(" %0t    %b       %b", $time, data, parity);

        data = 4'b0011;
        #10;
        $display(" %0t    %b       %b", $time, data, parity);

        data = 4'b0101;
        #10;
        $display(" %0t    %b       %b", $time, data, parity);

        data = 4'b0111;
        #10;
        $display(" %0t    %b       %b", $time, data, parity);

        data = 4'b1000;
        #10;
        $display(" %0t    %b       %b", $time, data, parity);

        data = 4'b1010;
        #10;
        $display(" %0t    %b       %b", $time, data, parity);

        data = 4'b1111;
        #10;
        $display(" %0t    %b       %b", $time, data, parity);

        $display("--------------------------------------");
        $display("Simulation completed successfully.");
        $finish;
    end

endmodule