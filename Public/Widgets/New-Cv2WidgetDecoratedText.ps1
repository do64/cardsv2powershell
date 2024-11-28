function New-Cv2WidgetDecoratedText {
    [CmdletBinding()]
    param(
        [parameter()]
        [hashtable]$StartIcon,

        [parameter()]
        [string]$TopLabel,

        [parameter(Mandatory)]
        [string]$Text,

        [parameter()]
        [string]$BottomLabel
    )

    $DecoratedTextWidgetHashTable = [ordered]@{}

    if ($StartIcon) {$DecoratedTextWidgetHashTable.Add("startIcon", $StartIcon)}
    if ($TopLabel) {$DecoratedTextWidgetHashTable.Add("topLabel", $TopLabel)}
    $DecoratedTextWidgetHashTable.Add("text", $Text)
    if ($BottomLabel) {$DecoratedTextWidgetHashTable.Add("bottomLabel", $BottomLabel)}

    return [ordered]@{"decoratedText" = $DecoratedTextWidgetHashTable}
}