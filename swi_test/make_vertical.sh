
# https://revealjs.com/vertical-slides/

rm vertslides.md

first=`cat $1`
shift
slidelist="$@"



echo "<section> $first </section>" >> vertslides.md
echo "<section>" >> vertslides.md
  for slide in $slidelist; do
    echo $slide
    vertslide=`cat $slide`
    echo "  <section> $vertslide </section>" >> vertslides.md
  done
echo "</section>" >> vertslides.md