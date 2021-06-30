for f in vids/*.gif; do
	base=$(basename $f)
	name=${base%.*}
	ffmpeg -i "vids/$name.gif" -i "audios/$name.mp3" "final/$name.mp4" -hide_banner -loglevel error -y
done
