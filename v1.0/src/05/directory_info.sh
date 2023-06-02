#!/bin/bash

echo "Total number of folders (including all nested ones) = $nfolders"
echo "TOP 5 folders of maximum size arranged in descending order (path and size):"
echo "$big_folders"
echo "Total number of files = $nfiles"
echo "Number of:"
echo "Configuration files (with the .conf extension) = $conf_files"
echo "Text files = $txt_files"
echo "Executable files = $exe_files"
echo "Log files (with the extension .log) = $log_files"
echo "Archive files = $archive_files"
echo "Symbolic links = $link_files"
echo "TOP 10 files of maximum size arranged in descending order (path, size):"
echo "$big_files"
echo "TOP 10 executable files of the maximum size arranged in descending order (path, size)"
echo "$big_exe_files"
end=$(date +%s.%N)
diff=$(echo "scale=3; $end - $start" | bc)
echo "Script execution time (in seconds) = $diff"
