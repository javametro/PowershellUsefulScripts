# Get it 
$path = [System.Environment]::GetEnvironmentVariable(
	'PATH', 
	'USER'
)

# Remove unwanted elements
$path = ($path.Split(';') | Where-Object { $_ -ne 'C:\Users\stephen\AppData\Local\Programs\Python\Python310'}) -join ';'

# Set it 
[System.Environment]::SetEnvironmentVariable(
	'PATH',
	$path,
	'USER'
)