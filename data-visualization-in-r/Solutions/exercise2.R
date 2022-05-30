plot_violin <- ggplot(data = df, aes(x = Strategy, y = Emo.Extent_z, fill=Emotion, color = Emotion)) + 
                      theme_classic()+
                      geom_jitter(aes(alpha=0.2, color=Emotion),shape=16, position=position_jitter(0.2)) + 
                      geom_violin(trim=F, alpha=0.5) +
                      scale_color_brewer(palette = "Dark2") +
                      scale_fill_brewer(palette = "Set3") +
                      xlab("Negative Emotions") +
                      ylab("Affective Intensity (z)") +
                      theme(legend.position="none") +
                      facet_wrap(~Emotion) +
                      geom_boxplot(width=0.2, color="black", alpha=0.2)  
plot_violin