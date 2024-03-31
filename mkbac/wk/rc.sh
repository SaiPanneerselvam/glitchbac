#!/bin/bash

# Create the wkback folder
mkdir -p wkback

# Create a separate file named wkbac.sh with commands
cat << EOF > wkback/wkbac.sh
#!/bin/bash

write() {
    echo "\$1"
}

add_file() {
    touch "wkback/\$1"
}

delete_file() {
    rm "wkback/\$1"
}

append_to_file() {
    echo "\$2" >> "wkback/\$1"
}

overwrite_file() {
    echo "\$2" > "wkback/\$1"
}

case "\$1" in
    write)
        write "\$2"
        ;;
    add_file)
        add_file "\$2"
        ;;
    delete_file)
        delete_file "\$2"
        ;;
    append_to_file)
        append_to_file "\$2" "\$3"
        ;;
    overwrite_file)
        overwrite_file "\$2" "\$3"
        ;;
    *)
        echo "Unknown command"
        ;;
esac
EOF

# Make wkbac.sh executable
chmod +x wkback/wkbac.sh
