module chacha20_serial_encoder (
    round_input,
    set_state,
    start_round,
    clear,
    clock,
    finished,
    round_output
);

    input [511:0] round_input;
    input set_state;
    input start_round;
    input clear;
    input clock;
    output finished;
    output [511:0] round_output;

    /* signal declarations */
    wire [511:0] _35 = 512'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    wire [511:0] _34 = 512'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    wire [511:0] _42;
    wire [511:0] _26 = 512'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    wire [511:0] _25 = 512'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    wire [511:0] _30;
    wire _24;
    wire [511:0] _31;
    wire [511:0] _1;
    reg [511:0] _27;
    wire [511:0] _43;
    wire _33;
    wire [511:0] _44;
    wire [511:0] _2;
    reg [511:0] _36;
    wire _84 = 1'b1;
    wire [2:0] _20 = 3'b000;
    wire [2:0] _19 = 3'b000;
    wire _28 = 1'b1;
    wire _29;
    wire [2:0] _81;
    wire _75 = 1'b1;
    wire vdd = 1'b1;
    wire [511:0] _38 = 512'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    wire [511:0] _37 = 512'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    wire [511:0] _5;
    wire _58 = 1'b1;
    wire _7;
    wire _55 = 1'b0;
    wire _9;
    wire _56;
    wire _57;
    wire _59;
    wire [511:0] _60;
    wire [383:0] _52;
    wire [31:0] _50 = 32'b00000000000000000000000000000001;
    wire [31:0] _49;
    wire [31:0] _51;
    wire [95:0] _48;
    wire [511:0] _53;
    wire _47;
    wire [511:0] _54;
    wire _45;
    wire [511:0] _61;
    wire [511:0] _10;
    reg [511:0] _39;
    wire _65 = 1'b1;
    wire gnd = 1'b0;
    wire _63;
    wire _66;
    wire _11;
    wire _13;
    wire _15;
    wire [512:0] _41;
    wire _74;
    wire _76;
    wire [2:0] _77;
    wire [2:0] _32 = 3'b100;
    wire _72;
    wire [2:0] _73;
    wire [2:0] _70 = 3'b011;
    wire _71;
    wire [2:0] _78;
    wire [2:0] _62 = 3'b010;
    wire _69;
    wire [2:0] _79;
    wire [2:0] _46 = 3'b001;
    wire _68;
    wire [2:0] _80;
    wire [2:0] _23 = 3'b000;
    wire _67;
    wire [2:0] _82;
    wire [2:0] _16;
    reg [2:0] _22;
    wire _83;
    wire _85;
    wire _17;

    /* logic */
    assign _42 = _41[512:1];
    assign _30 = _29 ? _5 : _27;
    assign _24 = _22 == _23;
    assign _31 = _24 ? _30 : _27;
    assign _1 = _31;
    always @(posedge _15) begin
        if (_13)
            _27 <= _26;
        else
            _27 <= _1;
    end
    assign _43 = _27 ^ _42;
    assign _33 = _22 == _32;
    assign _44 = _33 ? _43 : _36;
    assign _2 = _44;
    always @(posedge _15) begin
        if (_13)
            _36 <= _35;
        else
            _36 <= _2;
    end
    assign _29 = _9 == _28;
    assign _81 = _29 ? _46 : _22;
    assign _5 = round_input;
    assign _7 = set_state;
    assign _9 = start_round;
    assign _56 = _9 == _55;
    assign _57 = _56 & _7;
    assign _59 = _57 == _58;
    assign _60 = _59 ? _5 : _39;
    assign _52 = _39[383:0];
    assign _49 = _39[415:384];
    assign _51 = _49 + _50;
    assign _48 = _39[511:416];
    assign _53 = { _48, _51, _52 };
    assign _47 = _22 == _46;
    assign _54 = _47 ? _53 : _39;
    assign _45 = _22 == _23;
    assign _61 = _45 ? _60 : _54;
    assign _10 = _61;
    always @(posedge _15) begin
        if (_13)
            _39 <= _38;
        else
            _39 <= _10;
    end
    assign _63 = _22 == _62;
    assign _66 = _63 ? _65 : gnd;
    assign _11 = _66;
    assign _13 = clear;
    assign _15 = clock;
    chacha20_block
        pipelined_block
        ( .clock(_15), .clear(_13), .start(_11), .round_input(_39), .round_output(_41[512:1]), .finished(_41[0:0]) );
    assign _74 = _41[0:0];
    assign _76 = _74 == _75;
    assign _77 = _76 ? _32 : _22;
    assign _72 = _22 == _32;
    assign _73 = _72 ? _23 : _22;
    assign _71 = _22 == _70;
    assign _78 = _71 ? _77 : _73;
    assign _69 = _22 == _62;
    assign _79 = _69 ? _70 : _78;
    assign _68 = _22 == _46;
    assign _80 = _68 ? _62 : _79;
    assign _67 = _22 == _23;
    assign _82 = _67 ? _81 : _80;
    assign _16 = _82;
    always @(posedge _15) begin
        if (_13)
            _22 <= _20;
        else
            _22 <= _16;
    end
    assign _83 = _22 == _23;
    assign _85 = _83 ? _84 : gnd;
    assign _17 = _85;

    /* aliases */

    /* output assignments */
    assign finished = _17;
    assign round_output = _36;

endmodule