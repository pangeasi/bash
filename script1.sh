mkdir ejercicio2
cd ejercicio2
cat /etc/passwd | cut -f3 -d: | tr ':' ' ' | awk '{print $1}' | xargs mkdir -p
cat /etc/passwd | cut -f1,3 -d: | tr ':' ' ' | awk '{print $2"/"$1}' | xargs touch
