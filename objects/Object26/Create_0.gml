map_tiles_total = 100; // or however many tiles you want
map_tiles_visited = 0;
map_undiscovered = map_tiles_total - map_tiles_visited;  
map_completion = 0;           // Percentage complete (0 to 1)
bar_x = 50;                   // X position on screen
bar_y = 50;                   // Y position
bar_width = 200;              // Total width of bar
bar_height = 20;              // Height

tile_size = 32;

map_cols = room_width div tile_size;
map_rows = room_height div tile_size;

map_visited = array_create(map_cols, 0);
for (var i = 0; i < map_cols; i++) {
    map_visited[i] = array_create(map_rows, false);
}

map_tiles_total = map_cols * map_rows;
map_tiles_visited = 0;

minimap_visible = false;
