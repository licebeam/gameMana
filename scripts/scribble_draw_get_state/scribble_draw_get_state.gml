if (SCRIBBLE_WARNING_DRAW_SET_DEPRECATED)
{
    show_error("Scribble:\scribble_draw_get_state() has been deprecated, please use scribble_get_state()\n(Set SCRIBBLE_WARNING_DRAW_SET_DEPRECATED to <false> to hide this message)\n ", false);
}

return scribble_get_state();