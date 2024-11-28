function New-Cv2Section {
    [CmdletBinding()]
    param(
        [Parameter()]
        [string]$Header,

        [Parameter(Mandatory)]
        [array]$Widgets,

        [Parameter()]
        [boolean]$Collapsible,

        [Parameter()]
        [int]$UncollapsibleWidgetsCounter
    )

    $SectionHashtable = [ordered]@{}

    if ($Header) {$SectionHashtable.Add("header", $Header)}
    $SectionHashtable.Add("widgets", $Widgets)
    if ($Collapsible) {$SectionHashtable.Add("collapsible", $Collapsible)}
    if ($UncollapsibleWidgetsCounter) {$SectionHashtable.Add("uncollapsibleWidgetsCounter", $UncollapsibleWidgetsCounter)}

    return $SectionHashtable
}