# Listen To Change And Refresh Page 
auto create php server and listen to change file for refresh page in ubuntu with bash script
## before run script
 i used two package for listen to change file and run and send key to web browser 
 install that
 - `sudo apt-get install -y inotify-tools`
 - `sudo apt-get install -y xdotool`
 ## Usage in laravel
  - `copy run.sh into project root`
  - `open terminal in project root`
  - `run bash run.sh `
 
 php server run in `localhost:8002`
 
 ## if you want to change port and php file change this Variables
  - `URL='localhost:8002'`
  - `target_dir='public/index.php`





 
 
