function New-Cv2MaterialIcon {
    [CmdletBinding()]
    param(
        [parameter(Mandatory)]
        [string]$Name,

        [parameter()]
        [boolean]$Fill,

        [parameter()]
        [int]$Weight,

        [parameter()]
        [int]$Grade
    )

    $MaterialIconHashtable = [ordered]@{}

    $MaterialIconHashtable.Add("name", $Name)
    if ($Fill) {$MaterialIconHashtable.Add("fill", $Fill)}
    if ($Weight) {$MaterialIconHashtable.Add("weight", $Weight)}
    if ($Grade) {$MaterialIconHashtable.Add("grade", $Grade)}

    return $MaterialIconHashtable
}