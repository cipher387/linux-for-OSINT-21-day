echo "How old are you?"

read AGE

if ((  "$AGE" > 27 )); then
               echo "You are so old"
            else
               echo "You are so young"
            fi
