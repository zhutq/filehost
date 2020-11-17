magick minnie.png -quality 100 minnie.webp
magick minnie.webp minnie.webp.png
echo 'Comparing pngs with transparent background:'
magick compare -metric SSIM minnie.png minnie.webp.png null:
magick minnie.png -background white -alpha remove minnie.opaque.png
magick minnie.webp.png -background white -alpha remove minnie.webp.opaque.png
echo '\nAfter filled the background with white:'
magick compare -metric SSIM minnie.opaque.png minnie.webp.opaque.png null:
echo ''

