import 'libraries/noble/Noble'

import 'utilities/Utilities'

import 'scenes/_TitleScene'

-- fonts
Noble.Text.FONT_SMALL = Graphics.font.new("assets/fonts/Pixel-Digivolve-10")
Noble.Text.setFont(Noble.Text.FONT_SMALL)

Noble.GameData.setup({
})

Noble.showFPS = true

Noble.new(_TitleScene)
