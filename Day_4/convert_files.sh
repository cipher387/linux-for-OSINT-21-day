for i in `find txt_files/. -name "*.txt" -type f`; do
    sed 's/ \+/,/g'  "$i">"${i%.*}.csv";
done
