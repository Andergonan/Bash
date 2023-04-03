# kontrola počtu argumentů
if [ "$#" -ne 2 ]; then
  echo "Chyba: Musi byt zadany dva argumenty - nazevUzivatele nazevSkupiny"
  exit 1
fi

# vytvoření skupiny
sudo groupadd $2

# vytvoření uživatele
sudo useradd -m $1

# přidání uživatele do skupiny
sudo usermod -a -G $2 $1

echo "Uzivatel $1 vytvoren a pridan do skupiny $2"

# ------------------------------------------
# -_-_-_-_--_-_-_-_-volání-_-_-_-_--_-_-_-_-
# ./usergroup.sh jmenoUzivatele jmenoSkupiny
#-_-_-_-_--_-_-_-_--_-_-_-_--_-_-_-_--_-_-_-
