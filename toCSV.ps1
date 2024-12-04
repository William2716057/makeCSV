function ConvertToCSV($inputFile, $outputFile) {
    # Read input
    $lines = Get-Content -Path $inputFile

    # Initialize array for data
    $data = @()

    # Split each line into words, add to $data
    foreach ($line in $lines) {
        # Split by whitespace
        $words = $line -split '\s+'
	#join words with commas 
	$csvRow = $words -join ','
	#add CSV row to array
	$csvData += $csvRow
        }
	
	$csvData | out-File -FilePath $outputFile -Encoding UTF8 
    }

#results
$inputFile = "input.txt"
$outputFile = "output.csv"
ConvertToCSV $inputFile $outputFile
