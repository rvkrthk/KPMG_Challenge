function Query-ComputeMetadata()
{
    $str = Read-Host "Enter the name of the data to be retrieved "
    $ImdsServer = "http://169.254.169.254"
    $InstanceEndpoint = $ImdsServer + "/metadata/instance/compute/" + $str
    $uri = $InstanceEndpoint + "?api-version=2021-02-01&format=text"
    $result = Invoke-RestMethod -Method GET -Uri $uri -Headers @{"Metadata"="True"}
    return $result
}