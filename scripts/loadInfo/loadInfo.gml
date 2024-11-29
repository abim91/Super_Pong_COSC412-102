// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function loadInfo(){
	
	
/*	if(file_exists("saved.sav")){
	
	var _buffer = buffer_load("saved.sav");
	var _string = buffer_read(_buffer, buffer_string);
	
	buffer_delete(_buffer);
	 loadData = json_parse(_string);
	show_debug_message(loadData);
	
	}*/
	if(file_exists("gameinfo.json")){
		var _file = file_text_open_read("gameinfo.json");
		var _json_string = file_text_read_string(_file);
		file_text_close(_file);
		//read file
		if (file_exists("gameinfo.json")) {
	    var _file = file_text_open_read("gameinfo.json");
	    var _json_string = "";
    
	    // Read the entire JSON file content
	    while (!file_text_eof(_file)) {
	        _json_string += file_text_read_string(_file);
	        file_text_readln(_file); // Move to the next line
	    }
    
	    file_text_close(_file);
    
	    // Print the JSON string to the debug console
	    show_debug_message("JSON Content: " + _json_string);
}

		
		//read file end
		
		var loadData = json_parse(_json_string);
		
	//	var username = _loadData[0].username;
		
		
	}
	
	//show_debug_message(info);
	
	return loadData;
	
	

}