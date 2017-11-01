# phpdoc-one

vim's php document plugin, 3789 functions are supported currently

# install

## pathogen
cd .vim/bundle
git clone "ssss"

# how to use

vim a.php

for example type 

array_slice

    shift + K

with cursor over "explode" in .php files

# gen by yourself
cd doc
curl http://cn2.php.net/distributions/manual/php_manual_en.html.gz|\
    gunzip|\
    lynx --dump --stdin |\
    sed "s/^   \([:0-9a-zA-Z_]*\) \($(echo -ne '\u2014')\)/   *\1* -/" > php_manual.txt

    > |\
    > tee php_manual.txt|\
    > grep -o '^   [->a-zA-Z0-9:_]* =='|\
    > awk '{print $1"\tphp_manual.txt\t/^   "$1" =="}' |\
    > sort -f > tags

# feedback

email: mrytsr@gmial.com
