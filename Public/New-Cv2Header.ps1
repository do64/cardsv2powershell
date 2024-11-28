function New-Cv2Header {
    [CmdletBinding()]
    param(
        [parameter(Mandatory)]
        [string]$Title,

        [parameter()]
        [string]$Subtitle,

        [parameter()]
        [string]$ImageType,

        [parameter()]
        [string]$ImageUrl,

        [parameter()]
        [string]$ImageAltText
    )

    $HeaderHashtable = [ordered]@{}

    $HeaderHashtable.Add("title", $Title)
    if ($Subtitle) {$HeaderHashtable.Add("subtitle", $Subtitle)}
    if ($ImageType) {$HeaderHashtable.Add("imageType", $ImageType)}
    if ($ImageUrl) {$HeaderHashtable.Add("imageUrl", $ImageUrl)}
    if ($ImageAltText) {$HeaderHashtable.Add("imageAltText", $ImageAltText)}

    return $HeaderHashtable
}