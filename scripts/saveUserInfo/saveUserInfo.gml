// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function saveUserInfo(_username){
	randomise();//generate a random see for random_range(n1, n2);
	var _random_id = random_range(1000,99999999); 
	var _date_created = date_current_datetime();

	
	var _saveData = array_create(0);
	var _struct = {
		username: _username,
		maxScore: 0,
		creationDate : _date_created,
		account_id: _random_id
	};
/*	array_push(_saveData, _struct);
	
	var _string = json_stringify(_saveData);
	var _buffer = buffer_create(string_byte_length(_string)+1, buffer_fixed,1);
	
	buffer_write(_buffer, buffer_string, _string);
	
	buffer_save(_buffer,"saved.sav");
	buffer_delete(_buffer);*/
	
	//
	array_push(_saveData, _struct);
	var _json_string = json_stringify(_saveData);
	
	// Save the JSON string to a file
	var _file = file_text_open_write("gameinfo.json");
	file_text_write_string(_file, _json_string);
	file_text_close(_file);
	show_debug_message("game saved"+ _json_string);
}