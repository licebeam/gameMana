var fileName = argument0;

var buffer = buffer_load(fileName);
var loadString = buffer_read(buffer, buffer_string);
buffer_delete(buffer);

var jsonData = json_decode(loadString);
return jsonData;