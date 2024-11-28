function New-Cv2Icon {
    [CmdletBinding()]
    param(
        [parameter()]
        [string]$AltText,

        [parameter(ParameterSetName = "KnownIcon")]
        [string]$KnownIcon,

        [parameter(ParameterSetName = "IconUrl")]
        [string]$IconUrl,

        [parameter(ParameterSetName = "MaterialIcon")]
        [hashtable]$MaterialIcon
    )

    $StartIconHashtable = [ordered]@{}

    if ($AltText) {$StartIconHashtable.Add("altText", $AltText)}
    if ($KnownIcon) {$StartIconHashtable.Add("knownIcon", $KnownIcon)}
    if ($IconUrl) {$StartIconHashtable.Add("iconUrl", $IconUrl)}
    if ($MaterialIcon) {$StartIconHashtable.Add("materialIcon", $MaterialIcon)}

    return $StartIconHashtable
}