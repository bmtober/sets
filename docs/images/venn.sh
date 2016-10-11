
width=450
height=350

dcircle() {
  x0=$1
  y0=$2
  x1=$(expr $x0 + $3 )
  y1=$y0
  color=$4
  file=$5
  
  convert -size ${width}x${height} xc:none -fill $color -draw "circle $x0, $y0, $x1, $y1" ${file}.png
}

dcircle 126 141 125 gray55 A 
dcircle 200 141 140 gray55 B 

convert A.png B.png -compose xor -composite xorAB.png
convert A.png B.png -compose out -composite outAB.png
convert A.png B.png -compose in -composite inAB.png
convert inAB.png -gravity northwest -pointsize 25 -annotate +125+125 'bread\neggs' inAB.png
convert A.png B.png -compose dstout  -composite dstoutAB.png
convert A.png B.png -compose over  -composite overAB.png

exit
composite  B.png A.png  AB.png
composite -compose plus B.png A.png  plusAB.png
composite -compose minus  B.png A.png  minusAB.png
composite -compose multiply  B.png A.png  multiplyAB.png
composite -compose xor B.png A.png  xorAB.png
