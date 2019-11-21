#!/bin/sh

# -------------------------------------------------------------------
# UPDATE THIS VARIABLE ----------------------------------------------

# thisFont="Mohave" # must match the name in the font file, e.g. FiraCode-VF.ttf needs the variable "FiraCode"

# -------------------------------------------------------------------
# Update the following as needed ------------------------------------
set -e


# echo "Generating Static fonts"

# mkdir -p ./fonts/static
# mkdir -p ./fonts/variable

# echo "Made font directories"
# fontmake -g source/Karla.glyphs -i --round-instances -o ttf --output-dir ./fonts/static/ 
# echo "Made Roman ttfs"
# fontmake -g source/Karla-Italic.glyphs -i --round-instances -o ttf --output-dir ./fonts/static/
# echo "Made Italic ttfs"

# fontmake -g sources/Karla-Roman.glyphs -i -o otf --output-dir ./fonts/otf/
# echo "Made Roman otfs"
# fontmake -g sources/Karla-Italic.glyphs -i -o otf --output-dir ./fonts/otf/
# echo "Made Italic otfs"

echo "Generating VFs"
# mkdir -p ./fonts/variable
fontmake -g sources/Mohave.glyphs -o variable --round-instances --output-path ./fonts/vf/Mohave\[wght\].ttf
# fontmake -g sources/Mohave-Italic.glyphs -o variable --round-instances --output-path ./fonts/vf/Mohave-Italic\[wght\].ttf

# echo "Removing Build UFOS"

# rm -rf master_ufo/ instance_ufo/

# echo "Build UFOS Removed"

# echo "Post processing"

# vfs=$(ls ./fonts/vf/*.ttf)
# for vf in $vfs
# do
# 	gftools fix-dsig -f $vf;
# 	gftools fix-nonhinting $vf "$vf.fix";
# 	mv "$vf.fix" $vf;
# 	ttx -f -x "MVAR" $vf; # Drop MVAR. Table has issue in DW
# 	rtrip=$(basename -s .ttf $vf)
# 	new_file=./fonts/vf/$rtrip.ttx;
# 	rm $vf;
# 	ttx $new_file
# 	rm ./fonts/vf/*.ttx
# done
# rm ./fonts/vf/*backup*.ttf

# echo "fix vf meta? ok let's try that. I'm trying to fix VF meta"
# gftools fix-vf-meta $vfs;
# for vf in $vfs
# do
# 	mv "$vf.fix" $vf;
# done

# echo "Post processing complete"

# fontbakery check-googlefonts fonts/vf/*.ttf --ghmarkdown MohaveChecks.md 

