# Awesome Easy Setup

This is a setup for [awesome window manager](https://awesomewm.org) aimed to new users leaning in a single config file with some themes and widgets.

---

## Instalation
### Install [AwesomeWM](https://github.com/awesomeWM/awesome)
#### Arch linux AUR: [awesome-git](https://aur.archlinux.org/packages/awesome-git)
```bash
sudo pacman -S --needed base-devel git
git clone https://aur.archlinux.org/awesome-git.git
cd awesome-git
makepkg -fsri
```
#### Debian based
```bash
sudo apt build-dep awesome
git clone https://github.com/awesomewm/awesome
cd awesome
make package
cd build
sudo apt install ./*.deb
```
### Install [awesome-es](https://github.com/hartontw/awesome-es)
Backup default config (```$HOME/.config/awesome```) if exists and remove this folder.
```bash
git clone https://github.com/hartontw/awesome-es.git
mv awesome-es $HOME/.config/awesome
```

---

## Configuration
Most texts are case insensitive but is recommended use the values described here.
### lang
**Type**: ```text```
**Description**: [ISO 639‑1](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes) code
**Default**: ```$LANG```
**Values**: Look at ```$HOME/.config/awesome/locales```

### modkey
**Type**: ```text```
**Description**: Selected mod key for keyboard combinations
**Default**: ```Mod4```
**Values**: ```Mod1```, ```Mod4```, ```Mod5```, ```Shift```, ```Control```

### terminal
**Type**: ```text``` or ```bin_path```
**Description**: Desired terminal emulator
**Default**: ```$TERMINAL``` or ```xterm```
**Values**: Any installed terminal emulator (_gnome-terminal, alacritty, kitty, etc_)

### editor
**Type**: ```text``` or ```bin_path```
**Description**: Desired text editor
**Default**: ```$EDITOR``` or ```nano```
**Values**: Any installed cli text editor (_vim, micro, emacs, etc_)

### layouts
**type**: ```text_list```
**Description**: Desired layout list
**Default**: All
**Values**: ```floating```, ```tile```, ```tileleft```, ```tilebottom```, ```fairv```, ```fairh```, ```spiral```, ```dwindle```, ```max```, ```fullscreen```, ```magnifier```, ```cornernw```, ```cornerne```, ```cornersw```, ```cornerse```

### theme
**Type**: ```text``` or ```folder_path``` or ```file_path```
**Description**: Desired theme
**Default**: ```/usr/share/awesome/themes/default/theme.lua```
**Values**:
1. A lua file with the desired theme
2. A lua folder with the desired theme.lua file
3. The name of a theme installed in ```$HOME/.config/awesome/themes/```
4. The name of a theme installed in ```/usr/share/awesome/themes/```

### font
**Type**: ```text```
**Description**: Overrides theme font with the desired font and size
**Default**: ```theme_font```
**Values**: ```fc-list```

### background
**Type**: ```folder_path``` or ```file_path``` or ```url```
**Description**: Overrides theme wallpaper
**Default**: ```theme_wallpaper```
**Values**:
1. Random image from given folder path
2. Image from given file path
3. Image from given url

### icons
**Type**: ```text``` or ```folder_path```
**Description**: Overrides icon theme with the desired icon theme installed in your system. This can be a path to a folder or the name of an icon theme installed
**Default**: ```theme_icons```
**Values**:
1. path to desired icon folder
2. name of an icon theme installed on ```$HOME/.local/share/icons/```
3. name of an icon theme installed on ```/usr/share/icons/```

### double_press_time
**Type**: ```positive_number```
**Description**: Max time in seconds to be considered as double press or click
**Default**: ```0.2```
**Values**: Any positive number

### size_factor
**Type**: ```0.0 - 1.0```
**Description**: Size factor for resizing
**Default**: ```0.05```
**Values**: Any value between 0 and 1

### hide_on_click [REVISAR]
**Type**: 
**Description**:
**Default**:
**Values**:

### autorun
A list of services, commands and applications to run at start.
- **services**
**Type**: ```text_list```
**Description**: Desired programs to run at startup if those are not running yet
**Default**: none
**Values**: Any installed program or aplication

- **commands**
**Type**: ```text_list```
**Description**: Desired commands to run at startup
**Default**: empty
**Values**: Any bash command or script

- **apps**
**Type**: ```object_list```
**Description**: Desired apps to run at startup with custom presentation rules if those are not running yet 
**Default**: empty
**Values**: Any installed client aplication
**[Rules](https://awesomewm.org/apidoc/libraries/awful.spawn.html)**: 
    - placement: ```closest_corner```, ```no_offscreen```, ```no_overlap```, ```under_mouse```, ```next_to_mouse```, ```resize_to_mouse```, ```align```, ```top_left```, ```top_right```, ```bottom_left```, ```bottom_right```, ```left```, ```right```, ```top```, ```bottom```, ```centered```, ```center_vertical```, ```center_horizontal```, ```stretch```, ```stretch_left```, ```stretch_right```, ```stretch_up```, ```stretch_down```, ```maximize```, ```maximize_vertically```, ```maximize_horizontally```, ```scale```, ```next_to```, ```restore```, ```skip_fullscreen```,
    - honor_padding: ```bool```
    - honor_workarea: ```bool```
    - tag: ```index``` or ```name``` or ```current_tag``` or ```current_screen```
    - tags: ```tag_list```
    - new_tag: ```text```
    - switch_to_tags: ```bool```
    - focus: ```bool```
    - titlebars_enabled: ```bool```
    - callback: ```not implemented```
    - marked: ```bool```
    - is_fixed: ```bool```
    - immobilized_horizontal: ```bool```
    - immobilized_vertical: ```bool```
    - floating: ```bool```
    - x: ```positive_integer```
    - y: ```positive_integer```
    - width: ```positive_integer```
    - height: ```positive_integer```
    - dockable: ```bool```
    - requests_no_titlebar: ```bool```
    - shape: ```not working```
    - active: ```bool```
    - window: ```not implemented```
    - name: ```text```
    - skip_taskbar: ```bool```
    - type: ```not implemented```
    - class: ```not implemented```
    - instance: ```not implemented```
    - pid: ```not implemented```
    - role: ```not implemented```
    - machine: ```not implemented```
    - icon_name: ```not implemented```
    - icon: ```not implemented```
    - icon_sizes: ```not implemented```
    - screen: ```positive_integer```
    - hidden: ```bool```
    - minimized: ```bool```
    - size_hints_honor: ```bool```
    - border_width: ```positive_integer```
    - border_color: ```hex_color```
    - urgent: ```bool```
    - content: ```bool```
    - opacity: ```0.0 - 1.0```
    - ontop: ```bool```
    - above: ```bool```
    - below: ```bool```
    - fullscreen: ```bool```
    - maximized: ```bool```
    - maximized_horizontal: ```bool```
    - maximized_vertical: ```bool```
    - transient_for: ```not implemented```
    - group_window: ```not implemented```
    - leader_window: ```not implemented```
    - size_hints: ```not implemented```
    - motif_wm_hints: ```not implemented```
    - sticky: ```bool```
    - modal: ```bool```
    - focusable: ```bool```
    - shape_bounding: ```not implemented```
    - shape_clip: ```not implemented```
    - shape_input: ```not implemented```
    - client_shape_bounding: ```not implemented```
    - client_shape_clip: ```not implemented```
    - startup_id: ```not implemented```
    - valid: ```not implemented```
    - first_tag: ```index``` or ```name```
    - buttons: ```not implemented```
    - keys: ```not implemented```

**Example**: 
```json
"autorun": {
    "services": [
        "mpd",
        "picom --experimental-backends",
    ],
    "commands": [
        "bash -e '/home/user/scripts/example.sh' param",
        "/home/user/scripts/example.sh param",
    ],
    "apps": {     
        "firefox": {},
        "alacritty -e htop": {
            "tag": 2
        },
        "telegram_desktop": {
            "floating" : true,
            "tag"      : "current_tag",
            "placement": "bottom_right",
        }        
    }
}
```

### keyboard
Keyboard binds key combinations to actions by context.
Keys must match with one side of your locale file keys section.
All bindings are composed by any number of modifiers and a key.
This key can be set as on release or double press, by default is on press.
- ```^```: on release
- ```*```: double press

Special keys:
```
Control
Mod1
ISO_Level3_Shift
Mod4
Insert
Delete
Next
Prior
Home
End
Left
Up
Right
Down
KP_End
KP_Down
KP_Next
KP_Left
KP_Begin
KP_Right
KP_Home
KP_Up
KP_Prior
KP_Insert
KP_Delete
KP_Divide
KP_Multiply
KP_Subtract
KP_Add
KP_Enter
Escape
Tab
space
Return
Backspace
dead_acute
dead_circumflex
dead_grave
XF86MonBrightnessUp
XF86MonBrightnessDown
XF86AudioRaiseVolume
XF86AudioLowerVolume
XF86AudioMute
XF86AudioPlay
XF86AudioPrev
XF86AudioNext
XF86AudioStop
```

If you use modkey as a modifier it refers to modkey property.

Examples:

```"show_keys": "control s"```: control+s (_on press s_)

```"show_keys": "modkey s^"```: modkey+s (_on release s_)

```"show_keys": "modkey shift s*"```: modkey+shift+s (_double press s_)

Bindings for keyboard has two contexts; global and client

#### global
Global bindings can be split in custom categories, these can be seen in the hotkeys popup. Remember set proper translations in the locale file, if not raw name of category will be shown.

Examples:

```json
"global": {
    "awesome": {
        "show_keys": "modkey s",
        "show_awesome_menu": "modkey w",
        "reload_awesome": "modkey Control r",
        "quit_awesome": "modkey Shift q",                
        "run_lua_prompt": "modkey x"
    },
...
```

```json
"global": {
    "custom_category": {
        "show_keys": "modkey s",
        "show_awesome_menu": "modkey w",
        "reload_awesome": "modkey Control r",
        "quit_awesome": "modkey Shift q",                
        "run_lua_prompt": "modkey x"
    },
...
```

**Avaliable actions**:
```show_awesome_menu```: show main menu
```hide_awesome_menu```: hide main menu
```toggle_awesome_menu```: toggle main menu
```reload_awesome```: reload awesome
```quit_awesome```: quit awesome
```run_lua_prompt```: lua execute prompt
```lua_prompt_header```: Run Lua code: 
```run_prompt```: run prompt
```open_terminal```: open terminal
```show_menubar```: show menu bar
```hide_menubar```: hide menu bar
```focus_next_screen```: focus next screen
```focus_previous_screen```: focus previous screen
```increase_master_client```: increase size of the master client
```decrease_master_client```: decrease size of the master client
```increase_the_number_of_master_clients```: increase the current number of master clients
```decrease_the_number_of_master_clients```: decrease the current number of master clients
```increase_the_number_of_columns```: increase the current number of columns
```decrease_the_number_of_columns```: decrease the current number of columns
```select_layout_directly```: select a layout by index
```select_layout_directly_index```: select layout number @
```select_layout_directly_id```: select layout @
```focus_next_client```: focus next client
```focus_previous_client```: focus previous client
```focus_last_client```: focus last client
```restore_minimized_client```: restore minimized client
```swap_next_client```: swap focused with next client
```swap_previous_client```: swap focused with previous client
```jump_to_urgent_client```: jump to urgent client
```move_focused_client_to_tag```: move focused client to tag by index
```move_focused_client_to_tag_index```: move focused client to tag with index @
```move_focused_client_to_tag_id```: move focused client to tag with id @
```toggle_focused_client_on_tag```: toggle focused client on tag by index
```toggle_focused_client_on_tag_index```: toggle focused client on tag with index @
```toggle_focused_client_on_tag_id```: toggle focused client on tag with id @
```view_next_tag```: view next tag
```view_previous_tag```: view previous tag
```view_last_tag```: view last tag
```select_tag```: select tag by index
```select_tag_index```: select tag with index @
```select_tag_id```: select tag with id @
```toggle_tags```: toggle tags by index
```toggle_tags_index```: toggle tag with index @
```toggle_tags_id```: toggle tag with id @
```hide_popups```: hides all popups
```show_client_list```: show all client list
```hide_client_list```: hide all client list
```toggle_client_list```: toggles all client list
```show_screen_client_list```: shows screen client list
```hide_screen_client_list```: hides screen client list
```toggle_screen_client_list```: toggles screen client list
```show_tag_client_list```: shows tag client list
```hide_tag_client_list```: hides tag client list
```toggle_tag_client_list```: toggles tag client list
```hide_all```: hides all popups and menus
```select_next_layout```: select next layout
```select_previous_layout```: select previous layout

#### client
Client bindings are only valid for the current client

**Avaliable actions**:
```close```: close current client
```toggle_fullscreen```: toggles client fullscreen
```toggle_floating```: toggles client floating
```move_to_master```: move client to master
```move_to_screen```: move client to screen
```toggle_keep_on_top```: toggles client keep on top
```minimize```: minimizes client
```toggle_maximize```: toggles client maximize
```maximize```: maximize client
```unmaximize```: (un)maximize client
```toggle_maximize_horizontally```: toggles client maximize horizontally
```maximize_horizontally```: maximize client horizontally
```unmaximize_horizontally```: (un)maximize client horizontally
```toggle_maximize_vertically```: toggles client maximize vertically
```maximize_vertically```: maximize client vertically
```unmaximize_vertically```: (un)maximize client vertically


### mouse
Mouse is highly based on context. Aside of global and client it has a context for each widget.

