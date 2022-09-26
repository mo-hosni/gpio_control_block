module gpio_control_block (mgmt_gpio_in,
    mgmt_gpio_oeb,
    mgmt_gpio_out,
    one,
    pad_gpio_ana_en,
    pad_gpio_ana_pol,
    pad_gpio_ana_sel,
    pad_gpio_holdover,
    pad_gpio_ib_mode_sel,
    pad_gpio_in,
    pad_gpio_inenb,
    pad_gpio_out,
    pad_gpio_outenb,
    pad_gpio_slow_sel,
    pad_gpio_vtrip_sel,
    resetn,
    resetn_out,
    serial_clock,
    serial_clock_out,
    serial_data_in,
    serial_data_out,
    serial_load,
    serial_load_out,
    user_gpio_in,
    user_gpio_oeb,
    user_gpio_out,
    zero,
    gpio_defaults,
    pad_gpio_dm);
 output mgmt_gpio_in;
 input mgmt_gpio_oeb;
 input mgmt_gpio_out;
 output one;
 output pad_gpio_ana_en;
 output pad_gpio_ana_pol;
 output pad_gpio_ana_sel;
 output pad_gpio_holdover;
 output pad_gpio_ib_mode_sel;
 input pad_gpio_in;
 output pad_gpio_inenb;
 output pad_gpio_out;
 output pad_gpio_outenb;
 output pad_gpio_slow_sel;
 output pad_gpio_vtrip_sel;
 input resetn;
 output resetn_out;
 input serial_clock;
 output serial_clock_out;
 input serial_data_in;
 output serial_data_out;
 input serial_load;
 output serial_load_out;
 output user_gpio_in;
 input user_gpio_oeb;
 input user_gpio_out;
 output zero;
 input [12:0] gpio_defaults;
 output [2:0] pad_gpio_dm;

 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire net25;
 wire net26;
 wire net27;
 wire net28;
 wire net29;
 wire net30;
 wire net31;
 wire net32;
 wire net33;
 wire clknet_0_serial_clock;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire _059_;
 wire _060_;
 wire _061_;
 wire _062_;
 wire _063_;
 wire _064_;
 wire _065_;
 wire _066_;
 wire _067_;
 wire _068_;
 wire _069_;
 wire _070_;
 wire _071_;
 wire _072_;
 wire _073_;
 wire _074_;
 wire _075_;
 wire _076_;
 wire _077_;
 wire _078_;
 wire _079_;
 wire _080_;
 wire _081_;
 wire _082_;
 wire _083_;
 wire _084_;
 wire gpio_logic1;
 wire gpio_outenb;
 wire mgmt_ena;
 wire \shift_register[0] ;
 wire \shift_register[10] ;
 wire \shift_register[11] ;
 wire \shift_register[12] ;
 wire \shift_register[1] ;
 wire \shift_register[2] ;
 wire \shift_register[3] ;
 wire \shift_register[4] ;
 wire \shift_register[5] ;
 wire \shift_register[6] ;
 wire \shift_register[7] ;
 wire \shift_register[8] ;
 wire \shift_register[9] ;
 wire net3;
 wire net2;
 wire net1;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;
 wire net20;
 wire clknet_1_0__leaf_serial_clock;
 wire clknet_1_1__leaf_serial_clock;
 wire clknet_0_serial_load;
 wire clknet_1_0__leaf_serial_load;
 wire clknet_1_1__leaf_serial_load;
 wire clknet_0__068_;
 wire clknet_1_0__leaf__068_;
 wire clknet_1_1__leaf__068_;
 wire net34;
 wire net35;
 wire net36;
 wire net37;
 wire net38;
 wire net39;
 wire net40;
 wire net41;
 wire net42;
 wire net43;
 wire net44;
 wire net45;
 wire net46;
 wire net47;
 wire net48;
 wire net49;

 sky130_fd_sc_hd__or2b_1 _085_ (.A(net9),
    .B_N(gpio_outenb),
    .X(_053_));
 sky130_fd_sc_hd__clkbuf_2 _086_ (.A(_053_),
    .X(_072_));
 sky130_fd_sc_hd__inv_2 _087_ (.A(mgmt_ena),
    .Y(_054_));
 sky130_fd_sc_hd__and3_1 _088_ (.A(gpio_outenb),
    .B(mgmt_gpio_oeb),
    .C(mgmt_ena),
    .X(_055_));
 sky130_fd_sc_hd__a21o_1 _089_ (.A1(user_gpio_oeb),
    .A2(_054_),
    .B1(_055_),
    .X(net11));
 sky130_fd_sc_hd__nand2_1 _090_ (.A(mgmt_gpio_oeb),
    .B(net5),
    .Y(_056_));
 sky130_fd_sc_hd__nor2_1 _091_ (.A(net6),
    .B(_056_),
    .Y(_057_));
 sky130_fd_sc_hd__inv_2 _092_ (.A(_000_),
    .Y(_058_));
 sky130_fd_sc_hd__nand2_1 _093_ (.A(_057_),
    .B(_058_),
    .Y(_059_));
 sky130_fd_sc_hd__clkinv_2 _094_ (.A(net6),
    .Y(_060_));
 sky130_fd_sc_hd__nand3_1 _095_ (.A(_060_),
    .B(mgmt_gpio_oeb),
    .C(net5),
    .Y(_061_));
 sky130_fd_sc_hd__inv_2 _096_ (.A(mgmt_gpio_out),
    .Y(_062_));
 sky130_fd_sc_hd__nand2_1 _097_ (.A(_061_),
    .B(_062_),
    .Y(_063_));
 sky130_fd_sc_hd__nand3_1 _098_ (.A(_059_),
    .B(_063_),
    .C(mgmt_ena),
    .Y(_064_));
 sky130_fd_sc_hd__nand2_1 _099_ (.A(_054_),
    .B(user_gpio_out),
    .Y(_065_));
 sky130_fd_sc_hd__nand2_1 _100_ (.A(_064_),
    .B(_065_),
    .Y(net10));
 sky130_fd_sc_hd__inv_2 _101_ (.A(pad_gpio_in),
    .Y(_001_));
 sky130_fd_sc_hd__buf_6 _102_ (.A(net19),
    .X(_066_));
 sky130_fd_sc_hd__or2_1 _103_ (.A(_066_),
    .B(gpio_defaults[0]),
    .X(_067_));
 sky130_fd_sc_hd__clkbuf_1 _104_ (.A(_067_),
    .X(_002_));
 sky130_fd_sc_hd__buf_4 _105_ (.A(clknet_1_1__leaf_serial_load),
    .X(_068_));
 sky130_fd_sc_hd__inv_2 _112__6 (.A(clknet_1_0__leaf__068_),
    .Y(net25));
 sky130_fd_sc_hd__inv_2 _107_ (.A(net18),
    .Y(_069_));
 sky130_fd_sc_hd__buf_4 _108_ (.A(_069_),
    .X(_070_));
 sky130_fd_sc_hd__nand2_1 _109_ (.A(_070_),
    .B(gpio_defaults[0]),
    .Y(_003_));
 sky130_fd_sc_hd__or2_1 _110_ (.A(_066_),
    .B(gpio_defaults[2]),
    .X(_071_));
 sky130_fd_sc_hd__clkbuf_1 _111_ (.A(_071_),
    .X(_004_));
 sky130_fd_sc_hd__inv_2 _116__7 (.A(clknet_1_1__leaf__068_),
    .Y(net26));
 sky130_fd_sc_hd__nand2_1 _113_ (.A(_070_),
    .B(net49),
    .Y(_005_));
 sky130_fd_sc_hd__or2_1 _114_ (.A(_066_),
    .B(gpio_defaults[8]),
    .X(_042_));
 sky130_fd_sc_hd__clkbuf_1 _115_ (.A(_042_),
    .X(_006_));
 sky130_fd_sc_hd__inv_2 _120__8 (.A(clknet_1_1__leaf__068_),
    .Y(net27));
 sky130_fd_sc_hd__nand2_1 _117_ (.A(_070_),
    .B(gpio_defaults[8]),
    .Y(_007_));
 sky130_fd_sc_hd__or2_1 _118_ (.A(_066_),
    .B(gpio_defaults[9]),
    .X(_043_));
 sky130_fd_sc_hd__clkbuf_1 _119_ (.A(_043_),
    .X(_008_));
 sky130_fd_sc_hd__inv_2 _124__9 (.A(clknet_1_0__leaf__068_),
    .Y(net28));
 sky130_fd_sc_hd__nand2_1 _121_ (.A(_070_),
    .B(gpio_defaults[9]),
    .Y(_009_));
 sky130_fd_sc_hd__or2_1 _122_ (.A(_066_),
    .B(gpio_defaults[3]),
    .X(_044_));
 sky130_fd_sc_hd__clkbuf_1 _123_ (.A(_044_),
    .X(_010_));
 sky130_fd_sc_hd__inv_2 _128__10 (.A(clknet_1_0__leaf__068_),
    .Y(net29));
 sky130_fd_sc_hd__nand2_1 _125_ (.A(_070_),
    .B(gpio_defaults[3]),
    .Y(_011_));
 sky130_fd_sc_hd__or2_1 _126_ (.A(_066_),
    .B(gpio_defaults[4]),
    .X(_045_));
 sky130_fd_sc_hd__clkbuf_1 _127_ (.A(_045_),
    .X(_012_));
 sky130_fd_sc_hd__inv_2 _132__11 (.A(clknet_1_1__leaf__068_),
    .Y(net30));
 sky130_fd_sc_hd__nand2_1 _129_ (.A(_070_),
    .B(net48),
    .Y(_013_));
 sky130_fd_sc_hd__or2_1 _130_ (.A(_066_),
    .B(gpio_defaults[1]),
    .X(_046_));
 sky130_fd_sc_hd__clkbuf_1 _131_ (.A(_046_),
    .X(_014_));
 sky130_fd_sc_hd__inv_2 _136__12 (.A(clknet_1_0__leaf__068_),
    .Y(net31));
 sky130_fd_sc_hd__nand2_1 _133_ (.A(_070_),
    .B(gpio_defaults[1]),
    .Y(_015_));
 sky130_fd_sc_hd__or2_1 _134_ (.A(_066_),
    .B(gpio_defaults[10]),
    .X(_047_));
 sky130_fd_sc_hd__clkbuf_1 _135_ (.A(_047_),
    .X(_016_));
 sky130_fd_sc_hd__inv_2 _140__13 (.A(clknet_1_0__leaf__068_),
    .Y(net32));
 sky130_fd_sc_hd__nand2_1 _137_ (.A(_070_),
    .B(net47),
    .Y(_017_));
 sky130_fd_sc_hd__or2_1 _138_ (.A(_066_),
    .B(gpio_defaults[11]),
    .X(_048_));
 sky130_fd_sc_hd__clkbuf_1 _139_ (.A(_048_),
    .X(_018_));
 sky130_fd_sc_hd__inv_2 _144__14 (.A(clknet_1_1__leaf__068_),
    .Y(net33));
 sky130_fd_sc_hd__nand2_1 _141_ (.A(_070_),
    .B(gpio_defaults[11]),
    .Y(_019_));
 sky130_fd_sc_hd__or2_1 _142_ (.A(_066_),
    .B(gpio_defaults[12]),
    .X(_049_));
 sky130_fd_sc_hd__clkbuf_1 _143_ (.A(_049_),
    .X(_020_));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_serial_clock (.A(serial_clock),
    .X(clknet_0_serial_clock));
 sky130_fd_sc_hd__nand2_1 _145_ (.A(_070_),
    .B(gpio_defaults[12]),
    .Y(_021_));
 sky130_fd_sc_hd__or2_1 _146_ (.A(net18),
    .B(gpio_defaults[5]),
    .X(_050_));
 sky130_fd_sc_hd__clkbuf_1 _147_ (.A(_050_),
    .X(_022_));
 sky130_fd_sc_hd__inv_2 _152__2 (.A(clknet_1_0__leaf_serial_load),
    .Y(net21));
 sky130_fd_sc_hd__nand2_1 _149_ (.A(_069_),
    .B(gpio_defaults[5]),
    .Y(_023_));
 sky130_fd_sc_hd__or2_1 _150_ (.A(net18),
    .B(gpio_defaults[6]),
    .X(_051_));
 sky130_fd_sc_hd__clkbuf_1 _151_ (.A(_051_),
    .X(_024_));
 sky130_fd_sc_hd__inv_2 _156__3 (.A(clknet_1_0__leaf_serial_load),
    .Y(net22));
 sky130_fd_sc_hd__nand2_1 _153_ (.A(_069_),
    .B(gpio_defaults[6]),
    .Y(_025_));
 sky130_fd_sc_hd__or2_1 _154_ (.A(net18),
    .B(gpio_defaults[7]),
    .X(_052_));
 sky130_fd_sc_hd__clkbuf_1 _155_ (.A(_052_),
    .X(_026_));
 sky130_fd_sc_hd__inv_2 _158__4 (.A(clknet_1_1__leaf_serial_clock),
    .Y(net23));
 sky130_fd_sc_hd__nand2_1 _157_ (.A(_069_),
    .B(gpio_defaults[7]),
    .Y(_027_));
 sky130_fd_sc_hd__inv_2 _106__5 (.A(clknet_1_1__leaf__068_),
    .Y(net24));
 sky130_fd_sc_hd__dfbbn_1 _159_ (.CLK_N(net24),
    .D(net37),
    .RESET_B(_002_),
    .SET_B(_003_),
    .Q(mgmt_ena),
    .Q_N(_083_));
 sky130_fd_sc_hd__dfbbn_1 _160_ (.CLK_N(net25),
    .D(net41),
    .RESET_B(_004_),
    .SET_B(_005_),
    .Q(net7),
    .Q_N(_082_));
 sky130_fd_sc_hd__dfbbn_1 _161_ (.CLK_N(net26),
    .D(net42),
    .RESET_B(_006_),
    .SET_B(_007_),
    .Q(net12),
    .Q_N(_081_));
 sky130_fd_sc_hd__dfbbn_1 _162_ (.CLK_N(net27),
    .D(net43),
    .RESET_B(_008_),
    .SET_B(_009_),
    .Q(net13),
    .Q_N(_080_));
 sky130_fd_sc_hd__dfbbn_1 _163_ (.CLK_N(net28),
    .D(net36),
    .RESET_B(_010_),
    .SET_B(_011_),
    .Q(net9),
    .Q_N(_079_));
 sky130_fd_sc_hd__dfbbn_1 _164_ (.CLK_N(net29),
    .D(net38),
    .RESET_B(_012_),
    .SET_B(_013_),
    .Q(net8),
    .Q_N(_078_));
 sky130_fd_sc_hd__dfbbn_1 _165_ (.CLK_N(net30),
    .D(net35),
    .RESET_B(_014_),
    .SET_B(_015_),
    .Q(gpio_outenb),
    .Q_N(_077_));
 sky130_fd_sc_hd__dfbbn_1 _166_ (.CLK_N(net31),
    .D(net34),
    .RESET_B(_016_),
    .SET_B(_017_),
    .Q(net4),
    .Q_N(_000_));
 sky130_fd_sc_hd__dfbbn_1 _167_ (.CLK_N(net32),
    .D(net40),
    .RESET_B(_018_),
    .SET_B(_019_),
    .Q(net5),
    .Q_N(_076_));
 sky130_fd_sc_hd__dfbbn_1 _168_ (.CLK_N(net33),
    .D(net39),
    .RESET_B(_020_),
    .SET_B(_021_),
    .Q(net6),
    .Q_N(_075_));
 sky130_fd_sc_hd__dfbbn_1 _169_ (.CLK_N(net20),
    .D(net44),
    .RESET_B(_022_),
    .SET_B(_023_),
    .Q(net1),
    .Q_N(_074_));
 sky130_fd_sc_hd__dfbbn_1 _170_ (.CLK_N(net21),
    .D(net45),
    .RESET_B(_024_),
    .SET_B(_025_),
    .Q(net3),
    .Q_N(_073_));
 sky130_fd_sc_hd__dfbbn_1 _171_ (.CLK_N(net22),
    .D(net46),
    .RESET_B(_026_),
    .SET_B(_027_),
    .Q(net2),
    .Q_N(_084_));
 sky130_fd_sc_hd__dfrtp_1 _172_ (.CLK(clknet_1_1__leaf_serial_clock),
    .D(serial_data_in),
    .RESET_B(net19),
    .Q(\shift_register[0] ));
 sky130_fd_sc_hd__dfrtp_1 _173_ (.CLK(clknet_1_1__leaf_serial_clock),
    .D(\shift_register[0] ),
    .RESET_B(net19),
    .Q(\shift_register[1] ));
 sky130_fd_sc_hd__dfrtp_1 _174_ (.CLK(clknet_1_1__leaf_serial_clock),
    .D(\shift_register[1] ),
    .RESET_B(net19),
    .Q(\shift_register[2] ));
 sky130_fd_sc_hd__dfrtp_1 _175_ (.CLK(clknet_1_0__leaf_serial_clock),
    .D(\shift_register[2] ),
    .RESET_B(net18),
    .Q(\shift_register[3] ));
 sky130_fd_sc_hd__dfrtp_1 _176_ (.CLK(clknet_1_0__leaf_serial_clock),
    .D(\shift_register[3] ),
    .RESET_B(net18),
    .Q(\shift_register[4] ));
 sky130_fd_sc_hd__dfrtp_1 _177_ (.CLK(clknet_1_0__leaf_serial_clock),
    .D(\shift_register[4] ),
    .RESET_B(net18),
    .Q(\shift_register[5] ));
 sky130_fd_sc_hd__dfrtp_1 _178_ (.CLK(clknet_1_0__leaf_serial_clock),
    .D(\shift_register[5] ),
    .RESET_B(net18),
    .Q(\shift_register[6] ));
 sky130_fd_sc_hd__dfrtp_1 _179_ (.CLK(clknet_1_0__leaf_serial_clock),
    .D(\shift_register[6] ),
    .RESET_B(net18),
    .Q(\shift_register[7] ));
 sky130_fd_sc_hd__dfrtp_1 _180_ (.CLK(clknet_1_0__leaf_serial_clock),
    .D(\shift_register[7] ),
    .RESET_B(net18),
    .Q(\shift_register[8] ));
 sky130_fd_sc_hd__dfrtp_1 _181_ (.CLK(clknet_1_1__leaf_serial_clock),
    .D(\shift_register[8] ),
    .RESET_B(net19),
    .Q(\shift_register[9] ));
 sky130_fd_sc_hd__dfrtp_1 _182_ (.CLK(clknet_1_0__leaf_serial_clock),
    .D(\shift_register[9] ),
    .RESET_B(net19),
    .Q(\shift_register[10] ));
 sky130_fd_sc_hd__dfrtp_1 _183_ (.CLK(clknet_1_1__leaf_serial_clock),
    .D(\shift_register[10] ),
    .RESET_B(net19),
    .Q(\shift_register[11] ));
 sky130_fd_sc_hd__dfrtp_1 _184_ (.CLK(clknet_1_1__leaf_serial_clock),
    .D(\shift_register[11] ),
    .RESET_B(net19),
    .Q(\shift_register[12] ));
 sky130_fd_sc_hd__dfrtp_1 _185_ (.CLK(net23),
    .D(\shift_register[12] ),
    .RESET_B(net19),
    .Q(net16));
 sky130_fd_sc_hd__clkbuf_1 _186_ (.A(net19),
    .X(net14));
 sky130_fd_sc_hd__buf_2 _187_ (.A(clknet_1_1__leaf_serial_clock),
    .X(net15));
 sky130_fd_sc_hd__buf_2 _188_ (.A(clknet_1_1__leaf_serial_load),
    .X(net17));
 sky130_fd_sc_hd__ebufn_8 _189_ (.A(pad_gpio_in),
    .TE_B(_072_),
    .Z(mgmt_gpio_in));
 sky130_fd_sc_hd__conb_1 const_source (.HI(one),
    .LO(zero));
 sky130_fd_sc_hd__einvp_8 gpio_in_buf (.A(_001_),
    .TE(gpio_logic1),
    .Z(user_gpio_in));
 gpio_logic_high gpio_logic_high (.gpio_logic1(gpio_logic1));
 sky130_fd_sc_hd__decap_3 PHY_0 ();
 sky130_fd_sc_hd__decap_3 PHY_1 ();
 sky130_fd_sc_hd__decap_3 PHY_2 ();
 sky130_fd_sc_hd__decap_3 PHY_3 ();
 sky130_fd_sc_hd__decap_3 PHY_4 ();
 sky130_fd_sc_hd__decap_3 PHY_5 ();
 sky130_fd_sc_hd__decap_3 PHY_6 ();
 sky130_fd_sc_hd__decap_3 PHY_7 ();
 sky130_fd_sc_hd__decap_3 PHY_8 ();
 sky130_fd_sc_hd__decap_3 PHY_9 ();
 sky130_fd_sc_hd__decap_3 PHY_10 ();
 sky130_fd_sc_hd__decap_3 PHY_11 ();
 sky130_fd_sc_hd__decap_3 PHY_12 ();
 sky130_fd_sc_hd__decap_3 PHY_13 ();
 sky130_fd_sc_hd__decap_3 PHY_14 ();
 sky130_fd_sc_hd__decap_3 PHY_15 ();
 sky130_fd_sc_hd__decap_3 PHY_16 ();
 sky130_fd_sc_hd__decap_3 PHY_17 ();
 sky130_fd_sc_hd__decap_3 PHY_18 ();
 sky130_fd_sc_hd__decap_3 PHY_19 ();
 sky130_fd_sc_hd__decap_3 PHY_20 ();
 sky130_fd_sc_hd__decap_3 PHY_21 ();
 sky130_fd_sc_hd__decap_3 PHY_22 ();
 sky130_fd_sc_hd__decap_3 PHY_23 ();
 sky130_fd_sc_hd__decap_3 PHY_24 ();
 sky130_fd_sc_hd__decap_3 PHY_25 ();
 sky130_fd_sc_hd__decap_3 PHY_26 ();
 sky130_fd_sc_hd__decap_3 PHY_27 ();
 sky130_fd_sc_hd__decap_3 PHY_28 ();
 sky130_fd_sc_hd__decap_3 PHY_29 ();
 sky130_fd_sc_hd__decap_3 PHY_30 ();
 sky130_fd_sc_hd__decap_3 PHY_31 ();
 sky130_fd_sc_hd__decap_3 PHY_32 ();
 sky130_fd_sc_hd__decap_3 PHY_33 ();
 sky130_fd_sc_hd__decap_3 PHY_34 ();
 sky130_fd_sc_hd__decap_3 PHY_35 ();
 sky130_fd_sc_hd__decap_3 PHY_36 ();
 sky130_fd_sc_hd__decap_3 PHY_37 ();
 sky130_fd_sc_hd__decap_3 PHY_38 ();
 sky130_fd_sc_hd__decap_3 PHY_39 ();
 sky130_fd_sc_hd__decap_3 PHY_40 ();
 sky130_fd_sc_hd__decap_3 PHY_41 ();
 sky130_fd_sc_hd__decap_3 PHY_42 ();
 sky130_fd_sc_hd__decap_3 PHY_43 ();
 sky130_fd_sc_hd__decap_3 PHY_44 ();
 sky130_fd_sc_hd__decap_3 PHY_45 ();
 sky130_fd_sc_hd__decap_3 PHY_46 ();
 sky130_fd_sc_hd__decap_3 PHY_47 ();
 sky130_fd_sc_hd__decap_3 PHY_48 ();
 sky130_fd_sc_hd__decap_3 PHY_49 ();
 sky130_fd_sc_hd__decap_3 PHY_50 ();
 sky130_fd_sc_hd__decap_3 PHY_51 ();
 sky130_fd_sc_hd__decap_3 PHY_52 ();
 sky130_fd_sc_hd__decap_3 PHY_53 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_54 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_55 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_56 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_57 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_58 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_59 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_60 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_61 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_62 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_63 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_64 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_65 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_66 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_67 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_68 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_69 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_70 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_71 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_72 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_73 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_74 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_75 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_76 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_77 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_78 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_79 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_80 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_81 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_82 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_83 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_84 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_85 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_86 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_87 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_88 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_89 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_90 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_91 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_92 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_93 ();
 sky130_fd_sc_hd__buf_2 output3 (.A(net3),
    .X(pad_gpio_ana_sel));
 sky130_fd_sc_hd__buf_2 output2 (.A(net2),
    .X(pad_gpio_ana_pol));
 sky130_fd_sc_hd__buf_2 output1 (.A(net1),
    .X(pad_gpio_ana_en));
 sky130_fd_sc_hd__buf_2 output4 (.A(net4),
    .X(pad_gpio_dm[0]));
 sky130_fd_sc_hd__buf_2 output5 (.A(net5),
    .X(pad_gpio_dm[1]));
 sky130_fd_sc_hd__buf_2 output6 (.A(net6),
    .X(pad_gpio_dm[2]));
 sky130_fd_sc_hd__buf_2 output7 (.A(net7),
    .X(pad_gpio_holdover));
 sky130_fd_sc_hd__buf_2 output8 (.A(net8),
    .X(pad_gpio_ib_mode_sel));
 sky130_fd_sc_hd__buf_2 output9 (.A(net9),
    .X(pad_gpio_inenb));
 sky130_fd_sc_hd__buf_2 output10 (.A(net10),
    .X(pad_gpio_out));
 sky130_fd_sc_hd__buf_2 output11 (.A(net11),
    .X(pad_gpio_outenb));
 sky130_fd_sc_hd__buf_2 output12 (.A(net12),
    .X(pad_gpio_slow_sel));
 sky130_fd_sc_hd__buf_2 output13 (.A(net13),
    .X(pad_gpio_vtrip_sel));
 sky130_fd_sc_hd__buf_2 output14 (.A(net14),
    .X(resetn_out));
 sky130_fd_sc_hd__buf_6 output15 (.A(net15),
    .X(serial_clock_out));
 sky130_fd_sc_hd__buf_6 output16 (.A(net16),
    .X(serial_data_out));
 sky130_fd_sc_hd__buf_6 output17 (.A(net17),
    .X(serial_load_out));
 sky130_fd_sc_hd__buf_2 fanout18 (.A(resetn),
    .X(net18));
 sky130_fd_sc_hd__clkbuf_4 fanout19 (.A(resetn),
    .X(net19));
 sky130_fd_sc_hd__inv_2 _148__1 (.A(clknet_1_0__leaf_serial_load),
    .Y(net20));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_0__f_serial_clock (.A(clknet_0_serial_clock),
    .X(clknet_1_0__leaf_serial_clock));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_1__f_serial_clock (.A(clknet_0_serial_clock),
    .X(clknet_1_1__leaf_serial_clock));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_serial_load (.A(serial_load),
    .X(clknet_0_serial_load));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_0__f_serial_load (.A(clknet_0_serial_load),
    .X(clknet_1_0__leaf_serial_load));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_1__f_serial_load (.A(clknet_0_serial_load),
    .X(clknet_1_1__leaf_serial_load));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0__068_ (.A(_068_),
    .X(clknet_0__068_));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_0__f__068_ (.A(clknet_0__068_),
    .X(clknet_1_0__leaf__068_));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_1__f__068_ (.A(clknet_0__068_),
    .X(clknet_1_1__leaf__068_));
 sky130_fd_sc_hd__dlygate4sd3_1 hold1 (.A(\shift_register[10] ),
    .X(net34));
 sky130_fd_sc_hd__dlygate4sd3_1 hold2 (.A(\shift_register[1] ),
    .X(net35));
 sky130_fd_sc_hd__dlygate4sd3_1 hold3 (.A(\shift_register[3] ),
    .X(net36));
 sky130_fd_sc_hd__dlygate4sd3_1 hold4 (.A(\shift_register[0] ),
    .X(net37));
 sky130_fd_sc_hd__dlygate4sd3_1 hold5 (.A(\shift_register[4] ),
    .X(net38));
 sky130_fd_sc_hd__dlygate4sd3_1 hold6 (.A(\shift_register[12] ),
    .X(net39));
 sky130_fd_sc_hd__dlygate4sd3_1 hold7 (.A(\shift_register[11] ),
    .X(net40));
 sky130_fd_sc_hd__dlygate4sd3_1 hold8 (.A(\shift_register[2] ),
    .X(net41));
 sky130_fd_sc_hd__dlygate4sd3_1 hold9 (.A(\shift_register[8] ),
    .X(net42));
 sky130_fd_sc_hd__dlygate4sd3_1 hold10 (.A(\shift_register[9] ),
    .X(net43));
 sky130_fd_sc_hd__dlygate4sd3_1 hold11 (.A(\shift_register[5] ),
    .X(net44));
 sky130_fd_sc_hd__dlygate4sd3_1 hold12 (.A(\shift_register[6] ),
    .X(net45));
 sky130_fd_sc_hd__dlygate4sd3_1 hold13 (.A(\shift_register[7] ),
    .X(net46));
 sky130_fd_sc_hd__dlygate4sd3_1 hold14 (.A(gpio_defaults[10]),
    .X(net47));
 sky130_fd_sc_hd__dlygate4sd3_1 hold15 (.A(gpio_defaults[4]),
    .X(net48));
 sky130_fd_sc_hd__dlygate4sd3_1 hold16 (.A(gpio_defaults[2]),
    .X(net49));
endmodule
