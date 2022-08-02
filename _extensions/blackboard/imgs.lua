local function copyResource(file)
  path = quarto.utils.resolvePath(file)
  quarto.doc.addFormatResource(path)
end

function Header(el)
  copyResource('blackboard.png')
  copyResource('frame.png')
  copyResource('frame2.png')
  copyResource('dot.png')
  copyResource('underline.png')
  if not el.attributes['background-image'] then
    el.attributes['background-image'] = 'blackboard.png'
    el.attributes['background-size'] = 'cover'
  end
  
  return el
end