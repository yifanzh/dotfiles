function hex_to_ascii
    echo $argv[1] | xxd -r -p
    printf "\n"
end

