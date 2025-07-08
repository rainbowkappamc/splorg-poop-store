map_completion = map_tiles_visited / map_tiles_total;

var grid_x = clamp(floor(oTeal.x / tile_size), 0, map_cols - 1);
var grid_y = clamp(floor(oTeal.y / tile_size), 0, map_rows - 1);

if (!map_visited[grid_x][grid_y]) {
    map_visited[grid_x][grid_y] = true;
    map_tiles_visited += 1;
}

if (keyboard_check_pressed(vk_tab)) {
    minimap_visible = !minimap_visible
}

