#!/bin/bash
gnome-terminal --window --title="SASS" -e 'sh -c "sass --watch public/scss:public/css; exec bash;  exec  bash"'\
               --window --title="RACKUP" -e 'sh -c "rackup; exec bash;  exec  bash"'\
	       --window --title="HAML" -e 'sh -c "ruby ~/Code/Scripts/watch_haml.rb; exec bash;  exec  bash"'
