function add_rx_io(hRD)

% add AXI4 and AXI4-Lite slave interfaces
hRD.addAXI4SlaveInterface( ...
    'InterfaceConnection', 'axi_cpu_interconnect/M10_AXI', ...
    'BaseAddress',         '0x43C00000', ...
    'MasterAddressSpace',  'sys_ps7/Data');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Rx Reference design interfaces
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%	
hRD.addInternalIOInterface( ...
    'InterfaceID',    'IP Data Valid OUT', ...
    'InterfaceType',  'OUT', ...
    'PortName',       'dut_data_valid', ...
    'PortWidth',      1, ...
    'InterfaceConnection', 'util_ad9361_adc_pack/adc_valid_0', ...
    'IsRequired',     false);

hRD.addInternalIOInterface( ...
    'InterfaceID',    'IP Data 0 OUT', ...
    'InterfaceType',  'OUT', ...
    'PortName',       'dut_data_0', ...
    'PortWidth',      16, ...
    'InterfaceConnection', 'util_ad9361_adc_pack/adc_data_0', ...
    'IsRequired',     false);	

hRD.addInternalIOInterface( ...
    'InterfaceID',    'IP Data 1 OUT', ...
    'InterfaceType',  'OUT', ...
    'PortName',       'dut_data_1', ...
    'PortWidth',      16, ...
    'InterfaceConnection', 'util_ad9361_adc_pack/adc_data_1', ...
    'IsRequired',     false);	
	
hRD.addInternalIOInterface( ...
    'InterfaceID',    'IP Data 2 OUT', ...
    'InterfaceType',  'OUT', ...
    'PortName',       'dut_data_2', ...
    'PortWidth',      16, ...
    'InterfaceConnection', 'util_ad9361_adc_pack/adc_data_2', ...
    'IsRequired',     false);

hRD.addInternalIOInterface( ...
    'InterfaceID',    'IP Data 3 OUT', ...
    'InterfaceType',  'OUT', ...
    'PortName',       'dut_data_3', ...
    'PortWidth',      16, ...
    'InterfaceConnection', 'util_ad9361_adc_pack/adc_data_3', ...
    'IsRequired',     false);		
	
hRD.addInternalIOInterface( ...
    'InterfaceID',    'AD9361 ADC Data I0', ...
    'InterfaceType',  'IN', ...
    'PortName',       'sys_wfifo_0_dma_wdata', ...
    'PortWidth',      16, ...
    'InterfaceConnection', 'util_ad9361_adc_fifo/dout_data_0', ...
    'IsRequired',     false);	

hRD.addInternalIOInterface( ...
    'InterfaceID',    'AD9361 ADC Data Q0', ...
    'InterfaceType',  'IN', ...
    'PortName',       'sys_wfifo_1_dma_wdata', ...
    'PortWidth',      16, ...
    'InterfaceConnection', 'util_ad9361_adc_fifo/dout_data_1', ...
    'IsRequired',     false);

hRD.addInternalIOInterface( ...
    'InterfaceID',    'AD9361 ADC Data I1', ...
    'InterfaceType',  'IN', ...
    'PortName',       'sys_wfifo_2_dma_wdata', ...
    'PortWidth',      16, ...
    'InterfaceConnection', 'util_ad9361_adc_fifo/dout_data_2', ...
    'IsRequired',     false);	

hRD.addInternalIOInterface( ...
    'InterfaceID',    'AD9361 ADC Data Q1', ...
    'InterfaceType',  'IN', ...
    'PortName',       'sys_wfifo_3_dma_wdata', ...
    'PortWidth',      16, ...
    'InterfaceConnection', 'util_ad9361_adc_fifo/dout_data_3', ...
    'IsRequired',     false);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%	
% Tx Reference design interfaces
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%	
hRD.addInternalIOInterface( ...
    'InterfaceID',    'AD9361 DAC Data I0', ...
    'InterfaceType',  'OUT', ...
    'PortName',       'axi_ad9361_dac_data_i0', ...
    'PortWidth',      16, ...
    'InterfaceConnection', 'dac_fifo/din_data_0', ...
    'IsRequired',     false);
	
hRD.addInternalIOInterface( ...
    'InterfaceID',    'AD9361 DAC Data Q0', ...
    'InterfaceType',  'OUT', ...
    'PortName',       'axi_ad9361_dac_data_q0', ...
    'PortWidth',      16, ...
    'InterfaceConnection', 'dac_fifo/din_data_1', ...
    'IsRequired',     false);	

hRD.addInternalIOInterface( ...
    'InterfaceID',    'AD9361 DAC Data I1', ...
    'InterfaceType',  'OUT', ...
    'PortName',       'axi_ad9361_dac_data_i1', ...
    'PortWidth',      16, ...
    'InterfaceConnection', 'dac_fifo/din_data_2', ...
    'IsRequired',     false);
	
hRD.addInternalIOInterface( ...
    'InterfaceID',    'AD9361 DAC Data Q1', ...
    'InterfaceType',  'OUT', ...
    'PortName',       'axi_ad9361_dac_data_q1', ...
    'PortWidth',      16, ...
    'InterfaceConnection', 'dac_fifo/din_data_3', ...
    'IsRequired',     false);	
	
hRD.addInternalIOInterface( ...
    'InterfaceID',    'IP Data 0 IN', ...
    'InterfaceType',  'IN', ...
    'PortName',       'util_dac_unpack_dac_data_00', ...
    'PortWidth',      16, ...
    'InterfaceConnection', 'util_ad9361_dac_upack/dac_data_0', ...
    'IsRequired',     false);

hRD.addInternalIOInterface( ...
    'InterfaceID',    'IP Data 1 IN', ...
    'InterfaceType',  'IN', ...
    'PortName',       'util_dac_unpack_dac_data_01', ...
    'PortWidth',      16, ...
    'InterfaceConnection', 'util_ad9361_dac_upack/dac_data_1', ...
    'IsRequired',     false);

hRD.addInternalIOInterface( ...
    'InterfaceID',    'IP Data 2 IN', ...
    'InterfaceType',  'IN', ...
    'PortName',       'util_dac_unpack_dac_data_02', ...
    'PortWidth',      16, ...
    'InterfaceConnection', 'util_ad9361_dac_upack/dac_data_2', ...
    'IsRequired',     false);

hRD.addInternalIOInterface( ...
    'InterfaceID',    'IP Data 3 IN', ...
    'InterfaceType',  'IN', ...
    'PortName',       'util_dac_unpack_dac_data_03', ...
    'PortWidth',      16, ...
    'InterfaceConnection', 'util_ad9361_dac_upack/dac_data_3', ...
    'IsRequired',     false);	

hRD.addInternalIOInterface( ...
    'InterfaceID',    'IP Load Tx Data OUT', ...
    'InterfaceType',  'OUT', ...
    'PortName',       'util_dac_unpack_dac_valid_00', ...
    'PortWidth',      1, ...
    'InterfaceConnection', 'util_ad9361_dac_upack/dac_valid_0', ...
    'IsRequired',     false);	
	
hRD.addInternalIOInterface( ...
    'InterfaceID',    'IP Valid Tx Data IN', ...
    'InterfaceType',  'IN', ...
    'PortName',       'util_dac_unpack_upack_valid_00', ...
    'PortWidth',      1, ...
    'InterfaceConnection', 'util_ad9361_dac_upack/upack_valid_0', ...
    'IsRequired',     false);