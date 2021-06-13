# sample DSC Script
configuration webserverDSCsampleFixed
{   Node WebServerDemo 
  {      WindowsFeature IIS 
    {         Ensure = 'Present'         
              Name = 'Web-Server'         
              IncludeAllSubFeature = $true     
    }   
  }
}
