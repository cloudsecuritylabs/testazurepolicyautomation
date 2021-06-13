# sample DSC Script
configuration webserverDSCsample
{   Node WebServerDemo 
  {      WindowsFeature IIS 
    {         Ensure = 'Present'         
              Name = 'Web-Server-Demo'         
              IncludeAllSubFeature = $true     
    }   
  }
}
