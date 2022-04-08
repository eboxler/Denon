function SEND-DENON {
    param (
        [ValidateNotNullOrEmpty()]
        [string]$RemoteHost,
        [ValidateNotNullOrEmpty()]
        [string[]]$Commands
    )
    foreach ($Command in $Commands) {
        $port=23     #Port to send message
        $socket = new-object System.Net.Sockets.TcpClient($RemoteHost, $port)
        $data = [System.Text.Encoding]::ASCII.GetBytes($Command.ToUpper())
        $stream = $socket.GetStream()
        $stream.Write($data, 0, $data.Length)
    }

}