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

read_file() {
    cat "wkback/\$1"
}

list_files() {
    ls wkback
}

count_files() {
    ls -1 wkback | wc -l
}

move_file() {
    mv "wkback/\$1" "wkback/\$2"
}

copy_file() {
    cp "wkback/\$1" "wkback/\$2"
}

rename_file() {
    mv "wkback/\$1" "wkback/\$2"
}

create_folder() {
    mkdir -p "wkback/\$1"
}

delete_folder() {
    rm -rf "wkback/\$1"
}

list_folders() {
    find "wkback" -mindepth 1 -maxdepth 1 -type d -printf "%f\n"
}

count_folders() {
    find "wkback" -mindepth 1 -maxdepth 1 -type d | wc -l
}

move_folder() {
    mv "wkback/\$1" "wkback/\$2"
}

copy_folder() {
    cp -r "wkback/\$1" "wkback/\$2"
}

rename_folder() {
    mv "wkback/\$1" "wkback/\$2"
}

compress_folder() {
    tar -czf "wkback/\$1.tar.gz" "wkback/\$1"
}

extract_folder() {
    tar -xzf "wkback/\$1.tar.gz" -C "wkback/"
}

list_archives() {
    find "wkback" -mindepth 1 -maxdepth 1 -type f -name "*.tar.gz" -printf "%f\n"
}

delete_archive() {
    rm "wkback/\$1"
}

list_all() {
    ls -la wkback
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
    read_file)
        read_file "\$2"
        ;;
    list_files)
        list_files
        ;;
    count_files)
        count_files
        ;;
    move_file)
        move_file "\$2" "\$3"
        ;;
    copy_file)
        copy_file "\$2" "\$3"
        ;;
    rename_file)
        rename_file "\$2" "\$3"
        ;;
    create_folder)
        create_folder "\$2"
        ;;
    delete_folder)
        delete_folder "\$2"
        ;;
    list_folders)
        list_folders
        ;;
    count_folders)
        count_folders
        ;;
    move_folder)
        move_folder "\$2" "\$3"
        ;;
    copy_folder)
        copy_folder "\$2" "\$3"
        ;;
    rename_folder)
        rename_folder "\$2" "\$3"
        ;;
    compress_folder)
        compress_folder "\$2"
        ;;
    extract_folder)
        extract_folder "\$2"
        ;;
    list_archives)
        list_archives
        ;;
    delete_archive)
        delete_archive "\$2"
        ;;
    list_all)
        list_all
        ;;
    *)
        echo "Unknown command"
        ;;
esac
EOF

# Make wkbac.sh executable
chmod +x wkback/wkbac.sh
