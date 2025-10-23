# sort-my-series
A bash script which sorts and organizes [30nama](https://30nama.com) movie files into their specific directories by series name, season, and quality!

## Quick Run
```bash
curl -sSL https://raw.githubusercontent.com/Revisto/sort-my-files/main/sort-series.sh | bash
```

## Manual Usage
```bash
./sort-series.sh
```

The script automatically organizes files matching the 30nama naming pattern:
`SeriesName_S01E01_..._1080p_..._30nama.mkv`

Into directories like:
`SeriesName/S01/1080p/SeriesName_S01E01_..._1080p_..._30nama.mkv`
