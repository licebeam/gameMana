/// @param string/textElement   Text element to target. This element must have been created previously by scribble_draw() or scribble_cache()
/// @param speed                Amount of text to fade out per tick (1 tick is usually 1 frame). This is character or lines depending on the <perLine> argument
/// @param smoothness           How much text fades out. Higher numbers will allow more text to be visible as it fades out
/// @param perLine              Set to <true> to fade out one line at a time, otherwise text will fade out per-character
/// @param [occuranceName]      Unique identifier to differentiate particular occurances of a string within the game
/// 
/// How the text is revealed can be customised further by modifying the smoothness argument. A high value will cause text to be smoothly
/// faded out whereas a smoothness of 0 will cause text to instantly pop onto the screen. For advanced users, custom shader code can be
/// easily combined with the smoothness value to animate text as it fades out.
/// 
/// Events will not be executed as text fades out.

var _scribble_array = argument[0];
var _speed          = argument[1];
var _smoothness     = argument[2];
var _per_line       = argument[3];
var _occurance_name = ((argument_count > 4) && (argument[4] != undefined))? argument[4] : SCRIBBLE_DEFAULT_OCCURANCE_NAME;

if (_speed == undefined)
{
    show_error("Scribble:\nscribble_autotype_fade_out() has had its arguments changed. Please review your code\n ", false);
    exit;
}

var _scribble_array = scribble_cache(_scribble_array, _occurance_name);
if (_scribble_array == undefined) return undefined;

//Find our occurance data
var _occurance_map = _scribble_array[SCRIBBLE.OCCURANCES_MAP];
var _occurance_array = _occurance_map[? _occurance_name];

var _pages_array = _scribble_array[@ SCRIBBLE.PAGES_ARRAY];
var _page_array = _pages_array[_occurance_array[__SCRIBBLE_OCCURANCE.PAGE]];
var _window_array = array_create(2*__SCRIBBLE_WINDOW_COUNT, _page_array[__SCRIBBLE_PAGE.START_CHAR] - _smoothness);
_window_array[@ 0] += _smoothness;

//Update the remaining autotype state values
_occurance_array[@ __SCRIBBLE_OCCURANCE.WINDOW      ] = 0;
_occurance_array[@ __SCRIBBLE_OCCURANCE.WINDOW_ARRAY] = _window_array;
_occurance_array[@ __SCRIBBLE_OCCURANCE.METHOD      ] = _per_line? 2 : 1;
_occurance_array[@ __SCRIBBLE_OCCURANCE.SPEED       ] = _speed;
_occurance_array[@ __SCRIBBLE_OCCURANCE.SMOOTHNESS  ] = _smoothness;
_occurance_array[@ __SCRIBBLE_OCCURANCE.FADE_IN     ] = false;
_occurance_array[@ __SCRIBBLE_OCCURANCE.SKIP        ] = false;