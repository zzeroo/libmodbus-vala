<?xml version="1.0"?>
<api version="1.0">
	<namespace name="Modbus">
		<function name="close" symbol="modbus_close">
			<return-type type="void"/>
			<parameters>
				<parameter name="ctx" type="modbus_t*"/>
			</parameters>
		</function>
		<function name="connect" symbol="modbus_connect">
			<return-type type="int"/>
			<parameters>
				<parameter name="ctx" type="modbus_t*"/>
			</parameters>
		</function>
		<function name="flush" symbol="modbus_flush">
			<return-type type="int"/>
			<parameters>
				<parameter name="ctx" type="modbus_t*"/>
			</parameters>
		</function>
		<function name="free" symbol="modbus_free">
			<return-type type="void"/>
			<parameters>
				<parameter name="ctx" type="modbus_t*"/>
			</parameters>
		</function>
		<function name="get_byte_from_bits" symbol="modbus_get_byte_from_bits">
			<return-type type="uint8_t"/>
			<parameters>
				<parameter name="src" type="uint8_t*"/>
				<parameter name="idx" type="int"/>
				<parameter name="nb_bits" type="unsigned"/>
			</parameters>
		</function>
		<function name="get_byte_timeout" symbol="modbus_get_byte_timeout">
			<return-type type="int"/>
			<parameters>
				<parameter name="ctx" type="modbus_t*"/>
				<parameter name="to_sec" type="uint32_t*"/>
				<parameter name="to_usec" type="uint32_t*"/>
			</parameters>
		</function>
		<function name="get_float" symbol="modbus_get_float">
			<return-type type="float"/>
			<parameters>
				<parameter name="src" type="uint16_t*"/>
			</parameters>
		</function>
		<function name="get_float_dcba" symbol="modbus_get_float_dcba">
			<return-type type="float"/>
			<parameters>
				<parameter name="src" type="uint16_t*"/>
			</parameters>
		</function>
		<function name="get_header_length" symbol="modbus_get_header_length">
			<return-type type="int"/>
			<parameters>
				<parameter name="ctx" type="modbus_t*"/>
			</parameters>
		</function>
		<function name="get_response_timeout" symbol="modbus_get_response_timeout">
			<return-type type="int"/>
			<parameters>
				<parameter name="ctx" type="modbus_t*"/>
				<parameter name="to_sec" type="uint32_t*"/>
				<parameter name="to_usec" type="uint32_t*"/>
			</parameters>
		</function>
		<function name="get_socket" symbol="modbus_get_socket">
			<return-type type="int"/>
			<parameters>
				<parameter name="ctx" type="modbus_t*"/>
			</parameters>
		</function>
		<function name="mapping_free" symbol="modbus_mapping_free">
			<return-type type="void"/>
			<parameters>
				<parameter name="mb_mapping" type="modbus_mapping_t*"/>
			</parameters>
		</function>
		<function name="mapping_new" symbol="modbus_mapping_new">
			<return-type type="modbus_mapping_t*"/>
			<parameters>
				<parameter name="nb_bits" type="int"/>
				<parameter name="nb_input_bits" type="int"/>
				<parameter name="nb_registers" type="int"/>
				<parameter name="nb_input_registers" type="int"/>
			</parameters>
		</function>
		<function name="mask_write_register" symbol="modbus_mask_write_register">
			<return-type type="int"/>
			<parameters>
				<parameter name="ctx" type="modbus_t*"/>
				<parameter name="addr" type="int"/>
				<parameter name="and_mask" type="uint16_t"/>
				<parameter name="or_mask" type="uint16_t"/>
			</parameters>
		</function>
		<function name="read_bits" symbol="modbus_read_bits">
			<return-type type="int"/>
			<parameters>
				<parameter name="ctx" type="modbus_t*"/>
				<parameter name="addr" type="int"/>
				<parameter name="nb" type="int"/>
				<parameter name="dest" type="uint8_t*"/>
			</parameters>
		</function>
		<function name="read_input_bits" symbol="modbus_read_input_bits">
			<return-type type="int"/>
			<parameters>
				<parameter name="ctx" type="modbus_t*"/>
				<parameter name="addr" type="int"/>
				<parameter name="nb" type="int"/>
				<parameter name="dest" type="uint8_t*"/>
			</parameters>
		</function>
		<function name="read_input_registers" symbol="modbus_read_input_registers">
			<return-type type="int"/>
			<parameters>
				<parameter name="ctx" type="modbus_t*"/>
				<parameter name="addr" type="int"/>
				<parameter name="nb" type="int"/>
				<parameter name="dest" type="uint16_t*"/>
			</parameters>
		</function>
		<function name="read_registers" symbol="modbus_read_registers">
			<return-type type="int"/>
			<parameters>
				<parameter name="ctx" type="modbus_t*"/>
				<parameter name="addr" type="int"/>
				<parameter name="nb" type="int"/>
				<parameter name="dest" type="uint16_t*"/>
			</parameters>
		</function>
		<function name="receive" symbol="modbus_receive">
			<return-type type="int"/>
			<parameters>
				<parameter name="ctx" type="modbus_t*"/>
				<parameter name="req" type="uint8_t*"/>
			</parameters>
		</function>
		<function name="receive_confirmation" symbol="modbus_receive_confirmation">
			<return-type type="int"/>
			<parameters>
				<parameter name="ctx" type="modbus_t*"/>
				<parameter name="rsp" type="uint8_t*"/>
			</parameters>
		</function>
		<function name="reply" symbol="modbus_reply">
			<return-type type="int"/>
			<parameters>
				<parameter name="ctx" type="modbus_t*"/>
				<parameter name="req" type="uint8_t*"/>
				<parameter name="req_length" type="int"/>
				<parameter name="mb_mapping" type="modbus_mapping_t*"/>
			</parameters>
		</function>
		<function name="reply_exception" symbol="modbus_reply_exception">
			<return-type type="int"/>
			<parameters>
				<parameter name="ctx" type="modbus_t*"/>
				<parameter name="req" type="uint8_t*"/>
				<parameter name="exception_code" type="unsigned"/>
			</parameters>
		</function>
		<function name="report_slave_id" symbol="modbus_report_slave_id">
			<return-type type="int"/>
			<parameters>
				<parameter name="ctx" type="modbus_t*"/>
				<parameter name="max_dest" type="int"/>
				<parameter name="dest" type="uint8_t*"/>
			</parameters>
		</function>
		<function name="send_raw_request" symbol="modbus_send_raw_request">
			<return-type type="int"/>
			<parameters>
				<parameter name="ctx" type="modbus_t*"/>
				<parameter name="raw_req" type="uint8_t*"/>
				<parameter name="raw_req_length" type="int"/>
			</parameters>
		</function>
		<function name="set_bits_from_byte" symbol="modbus_set_bits_from_byte">
			<return-type type="void"/>
			<parameters>
				<parameter name="dest" type="uint8_t*"/>
				<parameter name="idx" type="int"/>
				<parameter name="value" type="uint8_t"/>
			</parameters>
		</function>
		<function name="set_bits_from_bytes" symbol="modbus_set_bits_from_bytes">
			<return-type type="void"/>
			<parameters>
				<parameter name="dest" type="uint8_t*"/>
				<parameter name="idx" type="int"/>
				<parameter name="nb_bits" type="unsigned"/>
				<parameter name="tab_byte" type="uint8_t*"/>
			</parameters>
		</function>
		<function name="set_byte_timeout" symbol="modbus_set_byte_timeout">
			<return-type type="int"/>
			<parameters>
				<parameter name="ctx" type="modbus_t*"/>
				<parameter name="to_sec" type="uint32_t"/>
				<parameter name="to_usec" type="uint32_t"/>
			</parameters>
		</function>
		<function name="set_debug" symbol="modbus_set_debug">
			<return-type type="int"/>
			<parameters>
				<parameter name="ctx" type="modbus_t*"/>
				<parameter name="flag" type="int"/>
			</parameters>
		</function>
		<function name="set_error_recovery" symbol="modbus_set_error_recovery">
			<return-type type="int"/>
			<parameters>
				<parameter name="ctx" type="modbus_t*"/>
				<parameter name="error_recovery" type="modbus_error_recovery_mode"/>
			</parameters>
		</function>
		<function name="set_float" symbol="modbus_set_float">
			<return-type type="void"/>
			<parameters>
				<parameter name="f" type="float"/>
				<parameter name="dest" type="uint16_t*"/>
			</parameters>
		</function>
		<function name="set_float_dcba" symbol="modbus_set_float_dcba">
			<return-type type="void"/>
			<parameters>
				<parameter name="f" type="float"/>
				<parameter name="dest" type="uint16_t*"/>
			</parameters>
		</function>
		<function name="set_response_timeout" symbol="modbus_set_response_timeout">
			<return-type type="int"/>
			<parameters>
				<parameter name="ctx" type="modbus_t*"/>
				<parameter name="to_sec" type="uint32_t"/>
				<parameter name="to_usec" type="uint32_t"/>
			</parameters>
		</function>
		<function name="set_slave" symbol="modbus_set_slave">
			<return-type type="int"/>
			<parameters>
				<parameter name="ctx" type="modbus_t*"/>
				<parameter name="slave" type="int"/>
			</parameters>
		</function>
		<function name="set_socket" symbol="modbus_set_socket">
			<return-type type="int"/>
			<parameters>
				<parameter name="ctx" type="modbus_t*"/>
				<parameter name="s" type="int"/>
			</parameters>
		</function>
		<function name="strerror" symbol="modbus_strerror">
			<return-type type="char*"/>
			<parameters>
				<parameter name="errnum" type="int"/>
			</parameters>
		</function>
		<function name="write_and_read_registers" symbol="modbus_write_and_read_registers">
			<return-type type="int"/>
			<parameters>
				<parameter name="ctx" type="modbus_t*"/>
				<parameter name="write_addr" type="int"/>
				<parameter name="write_nb" type="int"/>
				<parameter name="src" type="uint16_t*"/>
				<parameter name="read_addr" type="int"/>
				<parameter name="read_nb" type="int"/>
				<parameter name="dest" type="uint16_t*"/>
			</parameters>
		</function>
		<function name="write_bit" symbol="modbus_write_bit">
			<return-type type="int"/>
			<parameters>
				<parameter name="ctx" type="modbus_t*"/>
				<parameter name="coil_addr" type="int"/>
				<parameter name="status" type="int"/>
			</parameters>
		</function>
		<function name="write_bits" symbol="modbus_write_bits">
			<return-type type="int"/>
			<parameters>
				<parameter name="ctx" type="modbus_t*"/>
				<parameter name="addr" type="int"/>
				<parameter name="nb" type="int"/>
				<parameter name="data" type="uint8_t*"/>
			</parameters>
		</function>
		<function name="write_register" symbol="modbus_write_register">
			<return-type type="int"/>
			<parameters>
				<parameter name="ctx" type="modbus_t*"/>
				<parameter name="reg_addr" type="int"/>
				<parameter name="value" type="int"/>
			</parameters>
		</function>
		<function name="write_registers" symbol="modbus_write_registers">
			<return-type type="int"/>
			<parameters>
				<parameter name="ctx" type="modbus_t*"/>
				<parameter name="addr" type="int"/>
				<parameter name="nb" type="int"/>
				<parameter name="data" type="uint16_t*"/>
			</parameters>
		</function>
		<struct name="modbus_mapping_t">
			<field name="nb_bits" type="int"/>
			<field name="nb_input_bits" type="int"/>
			<field name="nb_input_registers" type="int"/>
			<field name="nb_registers" type="int"/>
			<field name="tab_bits" type="uint8_t*"/>
			<field name="tab_input_bits" type="uint8_t*"/>
			<field name="tab_input_registers" type="uint16_t*"/>
			<field name="tab_registers" type="uint16_t*"/>
		</struct>
		<struct name="modbus_t">
		</struct>
		<enum name="modbus_error_recovery_mode">
			<member name="MODBUS_ERROR_RECOVERY_NONE" value="0"/>
			<member name="MODBUS_ERROR_RECOVERY_LINK" value="2"/>
			<member name="MODBUS_ERROR_RECOVERY_PROTOCOL" value="4"/>
		</enum>
		<constant name="EMBBADCRC" type="int" value="1"/>
		<constant name="EMBBADDATA" type="int" value="2"/>
		<constant name="EMBBADEXC" type="int" value="3"/>
		<constant name="EMBBADSLAVE" type="int" value="6"/>
		<constant name="EMBMDATA" type="int" value="5"/>
		<constant name="EMBUNKEXC" type="int" value="4"/>
		<constant name="EMBXACK" type="int" value="0"/>
		<constant name="EMBXGPATH" type="int" value="0"/>
		<constant name="EMBXGTAR" type="int" value="0"/>
		<constant name="EMBXILADD" type="int" value="0"/>
		<constant name="EMBXILFUN" type="int" value="0"/>
		<constant name="EMBXILVAL" type="int" value="0"/>
		<constant name="EMBXMEMPAR" type="int" value="0"/>
		<constant name="EMBXNACK" type="int" value="0"/>
		<constant name="EMBXSBUSY" type="int" value="0"/>
		<constant name="EMBXSFAIL" type="int" value="0"/>
		<constant name="FALSE" type="int" value="0"/>
		<constant name="MODBUS_BROADCAST_ADDRESS" type="int" value="0"/>
		<constant name="MODBUS_ENOBASE" type="int" value="112345678"/>
		<constant name="MODBUS_FC_MASK_WRITE_REGISTER" type="int" value="22"/>
		<constant name="MODBUS_FC_READ_COILS" type="int" value="1"/>
		<constant name="MODBUS_FC_READ_DISCRETE_INPUTS" type="int" value="2"/>
		<constant name="MODBUS_FC_READ_EXCEPTION_STATUS" type="int" value="7"/>
		<constant name="MODBUS_FC_READ_HOLDING_REGISTERS" type="int" value="3"/>
		<constant name="MODBUS_FC_READ_INPUT_REGISTERS" type="int" value="4"/>
		<constant name="MODBUS_FC_REPORT_SLAVE_ID" type="int" value="17"/>
		<constant name="MODBUS_FC_WRITE_AND_READ_REGISTERS" type="int" value="23"/>
		<constant name="MODBUS_FC_WRITE_MULTIPLE_COILS" type="int" value="15"/>
		<constant name="MODBUS_FC_WRITE_MULTIPLE_REGISTERS" type="int" value="16"/>
		<constant name="MODBUS_FC_WRITE_SINGLE_COIL" type="int" value="5"/>
		<constant name="MODBUS_FC_WRITE_SINGLE_REGISTER" type="int" value="6"/>
		<constant name="MODBUS_MAX_ADU_LENGTH" type="int" value="260"/>
		<constant name="MODBUS_MAX_PDU_LENGTH" type="int" value="253"/>
		<constant name="MODBUS_MAX_READ_BITS" type="int" value="2000"/>
		<constant name="MODBUS_MAX_READ_REGISTERS" type="int" value="125"/>
		<constant name="MODBUS_MAX_WRITE_BITS" type="int" value="1968"/>
		<constant name="MODBUS_MAX_WRITE_REGISTERS" type="int" value="123"/>
		<constant name="MODBUS_MAX_WR_READ_REGISTERS" type="int" value="125"/>
		<constant name="MODBUS_MAX_WR_WRITE_REGISTERS" type="int" value="121"/>
		<constant name="OFF" type="int" value="0"/>
		<constant name="ON" type="int" value="1"/>
		<constant name="TRUE" type="int" value="1"/>
	</namespace>
</api>
