
slidelist="$1"
slidedir="$2"

#todays date in YYYYMMDD
today=`date +"%Y%m%d"`

rm filelist.txt
rm slideset_$today.md

# create slideset markdown with only metadata
cat metadata.md > slideset_$today.md


#read slidelist line by line, remove the checkbox and write filelist into test2.txt
while IFS= read -r line || [ -n "$line" ]; do
   #if [[ "$line" == *"[x]"* ]]; then
   if [[ "$line" != "" ]]; then
        echo $line
        #printf '%s\n' "$line"| sed 's/^.\{,6\}//'  >> filelist.txt
        printf '%s\n' "$line" >> filelist.txt
   fi
done < slidelist.md


# create one md from all slides mds with metadata
while IFS= read -r line; do
   # add empty line to end of file
   echo -en '\n' >> slideset_$today.md  
   cat $slidedir/$line >> slideset_$today.md
   #add empty line after slide
   echo -en '\n' >> slideset_$today.md 
   #add horizontal line after slide
   echo --- >> slideset_$today.md
done < filelist.txt

rm filelist.txt

# removing checkboxes from full file
#sed 's/^.\{,5\}//' slidelist.md > filelist.txt

## merge all md files in current dir to slideset_YYYYMMDD.md
#cat *.md > slideset_$today.md
