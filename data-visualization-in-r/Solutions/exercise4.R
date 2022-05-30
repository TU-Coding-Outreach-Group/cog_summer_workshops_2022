plot_anim <- ggplot(df, aes(x = Emo.Extent_z, y = Reg.Extent_z, size = Fear_During)) +
             geom_point() +
             theme_classic() +
             labs(title = 'Event: {frame_time}', x = 'Affective Intensity', y = 'Regulation Effort') +
             transition_time(as.integer(Event))
plot_anim