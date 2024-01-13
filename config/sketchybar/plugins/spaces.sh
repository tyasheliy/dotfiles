# !/bin/sh

if [[ "$SENDER" = "space_change" ]]; then
   case "$(yabai -m query --spaces --space | jq .index)" in 
      "1" ) \
         sketchybar --animate sin 5 \
                    --set $NAME icon=􁐥 \
                                label=Network
      ;;
      "2" ) \
         sketchybar --animate sin 5 \
                    --set $NAME icon=􀪏 \
                                label=Code
      ;;
      "3" ) \
         sketchybar --animate sin 5 \
                    --set $NAME icon=􀈠 \
                                label=Messages
      ;;
      *)
         sketchybar --animate sin 5 \
                    --set $NAME icon=􁻻 \
                                label="Other $(yabai -m query --spaces --space | jq .index)"

   esac
fi
