map_completion = map_tiles_visited / map_tiles_total;
map_undiscovered = map_tiles_total - map_tiles_visited;  
var percent = map_completion * 100; // convert to 0–100 scale
var formatted = string_format(percent, 0, 1); // round to 1 decimal place

if (minimap_visible) {
	
// All your minimap drawing code here
// Minimap position on the GUI layer
var mini_x = 20;
var mini_y = 20;
var mini_tile_size = 4; // Each tile is 4x4 pixels on the minimap

for (var i = 0; i < map_cols; i++) {
    for (var j = 0; j < map_rows; j++) {
        if (map_visited[i][j]) {
            draw_set_color(c_white);
        } else {
            draw_set_color(c_dkgray);
        }

        draw_rectangle(mini_x + i * mini_tile_size,
                       mini_y + j * mini_tile_size,
                       mini_x + (i + 1) * mini_tile_size,
                       mini_y + (j + 1) * mini_tile_size,
                       false);
    }
}


var p_tile_x = floor(oTeal.x / tile_size);
var p_tile_y = floor(oTeal.y / tile_size);

draw_set_color(c_red);
draw_rectangle(mini_x + p_tile_x * mini_tile_size,
               mini_y + p_tile_y * mini_tile_size,
               mini_x + (p_tile_x + 1) * mini_tile_size,
               mini_y + (p_tile_y + 1) * mini_tile_size,
               false);

}
	
draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_set_font(Fido);
draw_set_color(c_yellow);
draw_text(view_xport[0] + view_wport[0] - 40, 20, formatted + "%");
draw_text(view_xport[0] + view_wport[0] - 40, 40, map_tiles_visited);
draw_text(view_xport[0] + view_wport[0] - 40, 60, map_undiscovered);
