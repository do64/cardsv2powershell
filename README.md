# Google Cards v2 PowerShell Builder
This is a PowerShell module that assists with creating Cards v2 cards in JSON format for use with Google Chat. You'll need to install this module by downloading the contents of the repo and placing them in an appropriate PowerShell `modules` directory.

### About
The functions in this module assemble various parts of a Google Card v2 card and the full card itself in JSON compatible format. Currently the module only supports a small subset of the available Cards v2 objects.

You will need to be familiar with the structure of a Google Card v2 object to use this module efficiently. Refer to the Google [Cards v2 documentation](https://developers.google.com/workspace/chat/api/reference/rest/v1/cards) for additional information.

Currently, the module does not contain help information, but several examples of using the module are included below.

### Examples
Assemble a basic card with one section, containg a decorated text widget.
```powershell
$MaterialIcon = New-Cv2MaterialIcon -Name "Sync"
$Icon = New-Cv2Icon -MaterialIcon $MaterialIcon
$Widget = New-Cv2WidgetDecoratedText -StartIcon $Icon -Text "Hello world!"
$Section = New-Cv2Section -Widget $Widget
$Card = New-Cv2Card -Sections $Section
```
Convert the card to JSON format
```powershell
$Card | ConvertTo-Json -Depth 100
```
Create a card JSON compatible for testing with the [Google UI Kit Card Builder](https://addons.gsuite.google.com/uikit/builder).
```powershell
New-Cv2Card -Sections $Section -KitBuilderTest
```
