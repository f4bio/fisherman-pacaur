function __paur_list -d "pacaur -Qei"
  pacaur -Qei (pacaur -Qu|cut -d" " -f 1)|awk ' BEGIN {FS=":"}/^Name/{printf("\033[1;36m%s\033[1;37m", $2)}/^Description/{print $2}'
end
