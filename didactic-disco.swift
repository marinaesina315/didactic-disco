enum AppReducerBuilder {
    
    static var reducer: AppReducer {
        
        let videoSettingsReducer = VideoSettingsReducer()
        let maskReducer = MaskSettingsReducer()
        let mediaReducer = MediaReducer(videoSettingsReducer: videoSettingsReducer,
                                        maskSettingsReducer: maskReducer)
        let shapeReducer = ShapeReducer(mediaReducer: mediaReducer)
        let textReducer = TextReducer()
        let stickerReducer = StickerReducer()
        let elementsTransformer = ElementsTransformer()
        
        let collageReducer = CollageReducer(shapeReducer: shapeReducer,
                                            textReducer: textReducer,
                                            stickerReducer: stickerReducer)
