#!/bin/bash

pattern='(.+)_(S([0-9]{2,}))?E([0-9]{2,}).*_([0-9]{3,})p_.*_30[Nn][Aa][Mm][Aa]\.(mkv|mp4)'

for file in *; do
    if [[ -f "$file" ]]; then
        if [[ "$file" =~ $pattern ]]; then
            series_name="${BASH_REMATCH[1]}"
            season="${BASH_REMATCH[3]}"
            quality="${BASH_REMATCH[5]}"
            
            if [[ -z "$season" ]]; then
                season="01"
            fi
            
            series_path="${series_name}/S${season}/${quality}p"
            
            mkdir -p "$series_path"
            
            mv "$file" "$series_path/$file"
            
            echo "Moved: $file -> $series_path/$file"
        fi
    fi
done

echo "Done!"
