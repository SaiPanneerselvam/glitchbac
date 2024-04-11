# Glitch-BAC
### What is Glitch-BAC?
Glitch BAC is an automated script that installs bac onto a glitch.com website.
### How to install ?
1. Open your Glitch project terminal.
2. run the command `wget github.com/SaiPanneerselvam/glitchbac/raw/main/mkbac/wk/rc.sh`.
3. run the command `chmod +x rc.sh`
4. run the command `./rc.sh`
5. you're done! look at [How to use](#how-to-use) next.

### How to use
the bac commandline does exist and can be found. Here is how!
1. open your glitch project's terminal.
2. run the command `cd wkback`
3. HOW TO RUN THE SHELL ---
- at start of each command you want to issue to the bac file, write `./wkbac.sh YOURCOMMAND`. YOURCOMMAND is the command you want to issue to the BAC file.
   
### Help with commands
Since bac is yet to feature a "help" command, it is listed here.
1. **write**: Writes a string to the console.
   Syntax: `write "your_message"`
2. **add_file**: Creates a new file in the `wkback` folder.
   Syntax: `add_file "filename"`
3. **delete_file**: Deletes a file from the `wkback` folder.
   Syntax: `delete_file "filename"`
4. **append_to_file**: Appends data to an existing file in the `wkback` folder.
   Syntax: `append_to_file "filename" "data_to_append"`
5. **overwrite_file**: Overwrites the contents of an existing file in the `wkback` folder with new data.
   Syntax: `overwrite_file "filename" "new_data"`
6. **read_file**: Reads the contents of a file in the `wkback` folder and outputs it to the console.
   Syntax: `read_file "filename"`
7. **list_files**: Lists all files in the `wkback` folder.
   Syntax: `list_files`
8. **count_files**: Counts the number of files in the `wkback` folder.
   Syntax: `count_files`
9. **move_file**: Moves a file from one location to another within the `wkback` folder.
   Syntax: `move_file "source_filename" "destination_filename"`
10. **copy_file**: Copies a file from one location to another within the `wkback` folder.
    Syntax: `copy_file "source_filename" "destination_filename"`
11. **rename_file**: Renames a file in the `wkback` folder.
    Syntax: `rename_file "current_filename" "new_filename"`
12. **create_folder**: Creates a new folder within the `wkback` folder.
    Syntax: `create_folder "folder_name"`
13. **delete_folder**: Deletes a folder and its contents from the `wkback` folder.
    Syntax: `delete_folder "folder_name"`
14. **list_folders**: Lists all folders in the `wkback` folder.
    Syntax: `list_folders`
15. **count_folders**: Counts the number of folders in the `wkback` folder.
    Syntax: `count_folders`
16. **move_folder**: Moves a folder from one location to another within the `wkback` folder.
    Syntax: `move_folder "source_foldername" "destination_foldername"`
17. **copy_folder**: Copies a folder from one location to another within the `wkback` folder.
    Syntax: `copy_folder "source_foldername" "destination_foldername"`
18. **rename_folder**: Renames a folder in the `wkback` folder.
    Syntax: `rename_folder "current_foldername" "new_foldername"`
19. **compress_folder**: Compresses a folder into a .tar.gz archive.
    Syntax: `compress_folder "folder_name"`
20. **extract_folder**: Extracts a .tar.gz archive into the `wkback` folder.
    Syntax: `extract_folder "archive_name"`
21. **list_archives**: Lists all .tar.gz archives in the `wkback` folder.
    Syntax: `list_archives`
22. **delete_archive**: Deletes a .tar.gz archive from the `wkback` folder.
    Syntax: `delete_archive "archive_name"`
23. **list_all**: Lists all files, folders, and archives in the `wkback` folder.
    Syntax: `list_all`
