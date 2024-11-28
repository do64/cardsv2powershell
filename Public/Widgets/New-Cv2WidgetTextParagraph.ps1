function New-Cv2WidgetTextParagraph {
    [CmdletBinding()]
    param(
        [parameter(Mandatory)]
        [string]$Text,

        [parameter()]
        [int]$MaxLines
    )

    $TextParagraphWidgetHashtable = [ordered]@{}

    $TextParagraphWidgetHashtable.Add("text", $Text)
    if ($MaxLines) {$TextParagraphWidgetHashtable.Add("maxLines", $MaxLines)}

    return [ordered]@{"textParagraph" = $TextParagraphWidgetHashtable}
}