$hostnames = @('hostname0', 'hostname1', 'hostname2')

foreach ($host in @hostnames){
	if (Test-Connection -ComputerName $host -Count 1 -ErrorAction SilentlyContinue){
		Write-Host "$host is up"
	}
	else{
		Write-Host "$host is down"
	}
}
