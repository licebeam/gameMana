var fileName = argument0;
var saveString = argument1;

var buffer = buffer_create(string_byte_length(saveString) + 1, buffer_fixed, 1);
buffer_write(buffer, buffer_string, saveString);
buffer_save(buffer, fileName);
buffer_delete(buffer);