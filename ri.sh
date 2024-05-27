echo "Please enter the file name:"
read fileName

# Check if the file exists in the current directory
if [ -f "$fileName" ]; then
    echo "File found in the current directory! Processing $fileName"
    # Add your processing logic here
else
    echo "File not found in the current directory. Please enter a valid file name."
fi

word_count=$(wc -w < "$fileName")
sentence_count=$(grep -o '[.!?]' "$fileName" | wc -l)
character_count=$(wc -m < "$fileName")
a_r_i=$(echo "scale=2; 4.71 * ($character_count / $word_count) + 0.5 * ($word_count / $sentence_count) - 21.43" | bc)
echo "$a_r_i"

case $a_r_i in
    1.*) echo "Kindergarten";;
    2.*) echo "First Grade";;
    3.*) echo "Second Grade";;
    4.*) echo "Third Grade";;
    5.*) echo "Fourth Grade";;
    6.*) echo "Fifth Grade";;
    7.*) echo "Sixth Grade";;
    8.*) echo "Seventh Grade";;
    9.*) echo "Eighth Grade";;
    10.*) echo "Ninth Grade";;
    11.*) echo "Tenth Grade";;
    12.*) echo "Eleventh grade";;
    13.*) echo "Twelfth grade";;
    14.*) echo "College";;
esac
