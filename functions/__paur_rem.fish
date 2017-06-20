###
# paurrem
#
function __paur_rem -d "pacaur -Rns; Remove the specified package(s), its configuration(s) and unneeded dependencies"
  pacaur -Rns $argv
end
