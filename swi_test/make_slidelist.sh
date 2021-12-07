
# make list of all files in given dir

rm slidelist.md

slidedir="$1/*"
for f in $slidedir
do
  #printf "%s\n" "- [ ] $f" >> slidelist.md
  printf "%s\n" "$(basename $f)" >> slidelist.md
done
