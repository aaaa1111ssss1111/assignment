function guessing_game(){
    answer=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "please guess the number"
        read  number
        if [ $number -lt $answer ]
        then
            echo "your guess is lesser"
        elif [ $number -gt $answer ]
        then
            echo "your guess is greater"
        else
            echo "Correct guess"
        break;
        fi
    done
}
echo "guess the file number"
guessing_game
