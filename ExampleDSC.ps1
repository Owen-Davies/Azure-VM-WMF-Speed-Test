Configuration ExampleDSC
{
    Node localhost
    {
        File CreateFolder
        {
            Type            = 'Directory'
            DestinationPath = 'C:\NewFolder'
            Ensure          = "Present"
        }
    }
}