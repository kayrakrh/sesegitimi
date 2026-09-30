$m=@("Sesin seni bekliyor canim, bugun kucuk bir antrenman yapalim mi?","Sadece 10 dakika! Sesin icin kucuk bir mola zamani.","Serini bozma, bugunku antrenmanini yapmaya ne dersin?","Su ic, isin ve birkac pratik yap. Kendine iyi bak!","Her gun biraz, zamanla buyuk fark yaratir. Hadi baslayalim!")
$msg=$m|Get-Random
[Windows.UI.Notifications.ToastNotificationManager,Windows.UI.Notifications,ContentType=WindowsRuntime]|Out-Null
[Windows.Data.Xml.Dom.XmlDocument,Windows.Data.Xml.Dom.XmlDocument,ContentType=WindowsRuntime]|Out-Null
$x=New-Object Windows.Data.Xml.Dom.XmlDocument
$x.LoadXml("<toast><visual><binding template='ToastGeneric'><text>Ses Antrenmani</text><text>$msg</text></binding></visual></toast>")
$id='{1AC14E77-02E7-4E5D-B744-2EB1AE5198B7}\WindowsPowerShell\v1.0\powershell.exe'
[Windows.UI.Notifications.ToastNotificationManager]::CreateToastNotifier($id).Show([Windows.UI.Notifications.ToastNotification]::new($x))
