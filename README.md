# Denon
I needed a way to send commands to my Denon receiver using auto-hot-key (AHK) on my Windows Media Center. Unfortunately, DenonCMD is dated (.Net 4.0) at this point and hard to build, thus Send-Denon. I needed a way to control my volume while using PCM audio output.


Send-Denon was created out of the need to have an easy way to send known commands to a Denon receiver. Send-Denon has been written as a Power Script function to make it easier to just make it just work, without the delay of using a controller API to middleman the communication. Send-Denon accepts multiple inputs like DenonCMD while being a simple to deploy PowerShell function. Send-Denon will also accept lower and uppercase commands, to make life easier.

Usage:
Turn Main Zone On
> SEND-DENON -remotehost 10.50.10.50 -Commands ZMON
> 
> SEND-DENON 10.50.10.50 ZMON 
> 
Turn Main Zone Volume up 1% (each volume is .5)
> SEND-DENON -remotehost 10.50.10.50 -Commands MVUP,MVUP 
> 
> SEND-DENON 10.50.10.50 MVUP,MVUP

Commands: https://www.denon.com/-/media/files/documentmaster/denonna/avr-x3700hfy21avr_denon_protocol_v02_04062020.xlsx
