#!/bin/bash

pattern='(.+)_S([0-9]{2,})E([0-9]{2,})_.*?([0-9]{3,})p_.*?_30nama\.(mkv|mp4)'

for file in *; do
    if [[ -f "$file" ]]; then
        if [[ "$file" =~ $pattern ]]; then
            series_name="${BASH_REMATCH[1]}"
            season="${BASH_REMATCH[2]}"
            quality="${BASH_REMATCH[4]}"
            
            series_path="${series_name}/S${season}/${quality}p"
            
            mkdir -p "$series_path"
            
            mv "$file" "$series_path/$file"
            
            echo "Moved: $file -> $series_path/$file"
        fi
    fi
done

echo "Done!"
