{...}: {
  programs.mpv = {
    enable = true;
    config = {
      profile = "gpu-hq";
      scale = "ewa_lanczossharp";
      cscale = "ewa_lanczossharp";
      video-sync = "display-resample";
      interpolation = 1;
      tscale = "oversample";
      hwdec = "auto";
      vo = "gpu";
      ytdl-format = "bestvideo[height< = ?1660]+bestaudio/best";
    };
  };
}
