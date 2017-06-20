function paur -d "paur - pacaur wrapper"
  set -g paur_version 0.0.1
  set -g pacaur_version (pacaur --version)[1]

  # set -l current_dir (pwd)
	# set -l cmd

  switch $argv[1]
    case -h --help help
      __paur_usage > /dev/stderr
      return
    case -v --version version
      echo -e "\nv$paur_version (using: $pacaur_version)\n"
      return
    case test
      __paur_test $argv[2..-1]
      return
    case in
      __paur_in $argv[2..-1]
      return
    case upd
      __paur_upd
    case "*"
      echo -e 'unknown command: "$argv[$idx]" - check `\$ paur help`'
  end
end

function paur -d "pacaur helpers"
  if test (count $argv) -lt 2
    echo "wrong amount of parameters: "(count $argv)" (required: >=2)"
    __paur_usage > /dev/stderr
    return 1
  end
  if test (string sub -l 2 $argv[1]) = "ya"
    set -l action (string sub -s 2 $argv[1])
  else

  end

  set -l params $argv[2..-1]

	switch $action
		case -h --help help
			__paur_usage > /dev/stderr
			return
		case -v --version version
			echo "v$paur_version (using: $pacaur_version)"
			return
    case \*
      command "__paur_$action" $params
	end
end
