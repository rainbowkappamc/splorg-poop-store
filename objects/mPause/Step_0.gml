confirm_key = keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(0, gp_face1);
right_key = keyboard_check_pressed(vk_right) || gamepad_button_check(0, gp_padr);
left_key = keyboard_check_pressed(vk_left) || gamepad_button_check(0, gp_padl);
up_key = keyboard_check_pressed(vk_up) || gamepad_button_check_pressed(0, gp_padu);
down_key = keyboard_check_pressed(vk_down) || gamepad_button_check_pressed(0, gp_padd);
escape_key = keyboard_check_pressed(vk_escape) || gamepad_button_check_pressed(0, gp_select);
run_key_pressed = keyboard_check_pressed(vk_shift) || gamepad_button_check_pressed(0, gp_shoulderl)
run_key_released = keyboard_check_pressed(vk_shift) || gamepad_button_check_pressed(0, gp_shoulderl)

//options currently
op_length = array_length_2d(option, menu_level);

//menu navigation
pos += down_key - up_key;
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length-1};

//option navigation
if confirm_key {

var menu_level_base = menu_level;

switch(menu_level) {

    case 0:
        switch(pos){       
        //Start
        case 0:
			instance_destroy();
            break; 
              
        //Settings    
        case 1:
            menu_level = 1;
            break;    
            
        //Quit
        case 2:
            game_end();
            break;
        }
    break;
    
    case 1:
        switch(pos){
        //Window Size
        case 0:
            
            break;
        
        ///Brightness
        case 1:
            
            break;
            
        ///Controls
        case 2:
    
            break;    
                  
        //Back
        case 3:
        menu_level = 0;
        break;
        }
    }
    
    if menu_level_base != menu_level {pos = 0};
    
    //update to correct options
    op_length = array_length_2d(option, menu_level);
}