#!/bin/bash

# Create the wkback folder if it doesn't exist
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

file_size() {
    stat -c%s "wkback/\$1"
}

folder_size() {
    du -sh "wkback/\$1" | cut -f1
}

search_file() {
    grep -r "\$2" "wkback/\$1"
}

backup_wkback() {
    timestamp=\$(date +%Y%m%d_%H%M%S)
    tar -czf "wkback_backup_\$timestamp.tar.gz" "wkback"
}

restore_wkback() {
    if [ -f "\$2" ]; then
        tar -xzf "\$2" -C "."
    else
        echo "Backup file does not exist"
    fi
}

help() {
    echo "Available commands:"
    echo "  write <message>                - Write a message to the console"
    echo "  add_file <filename>            - Create a new file"
    echo "  delete_file <filename>         - Delete a file"
    echo "  append_to_file <file> <text>   - Append text to a file"
    echo "  overwrite_file <file> <text>   - Overwrite a file with text"
    echo "  read_file <filename>           - Read and display file contents"
    echo "  list_files                     - List all files"
    echo "  count_files                    - Count the number of files"
    echo "  move_file <src> <dest>         - Move a file"
    echo "  copy_file <src> <dest>         - Copy a file"
    echo "  rename_file <old> <new>        - Rename a file"
    echo "  create_folder <foldername>     - Create a new folder"
    echo "  delete_folder <foldername>     - Delete a folder"
    echo "  list_folders                   - List all folders"
    echo "  count_folders                  - Count the number of folders"
    echo "  move_folder <src> <dest>       - Move a folder"
    echo "  copy_folder <src> <dest>       - Copy a folder"
    echo "  rename_folder <old> <new>      - Rename a folder"
    echo "  compress_folder <folder>       - Compress a folder"
    echo "  extract_folder <archive>       - Extract a folder archive"
    echo "  list_archives                  - List all compressed archives"
    echo "  delete_archive <archive>       - Delete a compressed archive"
    echo "  list_all                       - List all files and folders with details"
    echo "  file_size <filename>           - Get the size of a file"
    echo "  folder_size <foldername>       - Get the size of a folder"
    echo "  search_file <filename> <text>  - Search for text in a file"
    echo "  backup_wkback                  - Backup the entire wkback directory"
    echo "  restore_wkback <backup_file>   - Restore wkback from a backup file"
    echo "  help                           - Show this help message"
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
    file_size)
        file_size "\$2"
        ;;
    folder_size)
        folder_size "\$2"
        ;;
    search_file)
        search_file "\$2" "\$3"
        ;;
    backup_wkback)
        backup_wkback
        ;;
    restore_wkback)
        restore_wkback "\$2"
        ;;
    help)
        help
        ;;
    *)
        echo "Unknown command. Use 'help' for a list of commands."
        ;;
esac
EOF

# Make wkbac.sh executable
chmod +x wkback/wkbac.sh
