///@description tile_meeting(x,y,layer)
///@param x
///@param y
///@param layer

function tile_meeting(){
var _layer = argument2,
    _tm = layer_tilemap_get_id(_layer);
//calling the layer

var _x1 = tilemap_get_cell_x_at_pixel(_tm, bbox_left + (argument0 - x), y),
    _y1 = tilemap_get_cell_y_at_pixel(_tm, x, bbox_top + (argument1 - y)),
    _x2 = tilemap_get_cell_x_at_pixel(_tm, bbox_right + (argument0 - x), y),
    _y2 = tilemap_get_cell_y_at_pixel(_tm, x, bbox_bottom + (argument1 - y));
//seeing what part of the tile we're in contact with and putting them into arguments (read-only variables)

for(var _x = _x1; _x <= _x2; _x++){
	for(var _y = _y1; _y <= _y2; _y++){
		if(tile_get_index(tilemap_get(_tm, _x, _y))){
		return true;
		}
	}
}

return false;
}

//i dont entirely understand this. code is from:
//https://gamemaker.io/en/blog/precise-tile-collisions-by-pixelated-pope

//for (<assignment>; <expression>; <operation>)
//for() = does once, then does the code in {} every other time

/*Now, this may sound complicated when written like that, but you should interpret it as:

    1. The first <assignment> initializes the for-loop
    2. The <expression> tests whether the loop should be ended
    3. The <statement> is performed
    4. The <operation> is performed
    5. Go back to step 2 and perform the expression again and continue or exit the loop
*/
//https://manual-en.yoyogames.com/#t=GameMaker_Language%2FGML_Overview%2FLanguage_Features%2Ffor.htm