
# What to do to make slides

1. Create a list with all slidefiles `bash make_slidelist.sh slides`

2. make a copy of slidelist.md, move / remove files into order 

OR 

1. create a new directory and copy wished slide files into it

2. run `bash make_slidelist.sh newslidedir`

---

3. Create markdown slide file with `bash make_slideset.sh slidelist.md slides` with 1: list of slides in order to put together, 2: directory with the slidefiles

4. Run other stuff to create html slideset


#TODO: include make_vertical, they could be indicated by indentation in slidelist.md, leave out when creating slides from dir


---

 Making html slides:
 
 * build sif from def in parent (this did not work lately) OR `wget https://a3s.fi/general/slidefactory.simg`
 * put full slide md in parent and run ` singularity -s exec -B $PWD:$PWD  slidefactory.simg  python convert.py testslides.md `
-> creates testslides.html
