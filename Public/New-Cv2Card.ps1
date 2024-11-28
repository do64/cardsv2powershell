function New-Cv2Card {
    [CmdletBinding()]
    param(
        [parameter()]
        [string]$CardId,

        [parameter()]
        [hashtable]$Header,

        [parameter()]
        [array]$Sections,

        [switch]$KitBuilderTest,

        [switch]$AsJson
    )

    if (!$CardId) {$CardId = (New-Guid).Guid}

    $CardsV2Array = @()
    $CardHashtable =[ordered]@{}

    if ($Header) {$CardHashtable.Add("header", $Header)}
    if ($Sections) {$CardHashtable.Add("sections", $Sections)}

    $CardsV2Array += [ordered]@{
        "cardId" = $CardId;
        "card" = $CardHashtable
    }

    if ($KitBuilderTest) {
        return $CardHashtable | ConvertTo-Json -Depth 100
    } elseif ($AsJson) {
        return ([ordered]@{"cardsV2" = $CardsV2Array} | ConvertTo-Json -Depth 100)
    } else {
        return [ordered]@{"cardsV2" = $CardsV2Array}
    }
}