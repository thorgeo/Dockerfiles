ffmpeg \
  -i $RTSP_URL \
  -vcodec copy -strict -2 \
  -f segment -segment_time 60 -segment_format mp4 -segment_list_flags +live \
  -segment_list /records/output.m3u8 /records/out%08d.ts
