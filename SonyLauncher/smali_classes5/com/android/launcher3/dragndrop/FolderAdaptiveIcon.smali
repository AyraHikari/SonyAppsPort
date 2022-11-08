.class public Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;
.super Landroid/graphics/drawable/AdaptiveIconDrawable;
.source "FolderAdaptiveIcon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$BitmapRendererDrawable;,
        Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$MyConstantState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FolderAdaptiveIcon"

.field private static final sTmpRect:Landroid/graphics/Rect;


# instance fields
.field private final mBadge:Landroid/graphics/drawable/Drawable;

.field private final mConstantState:Landroid/graphics/drawable/Drawable$ConstantState;

.field private final mMask:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;->sTmpRect:Landroid/graphics/Rect;

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Path;)V
    .locals 4
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;
    .param p2, "fg"    # Landroid/graphics/drawable/Drawable;
    .param p3, "badge"    # Landroid/graphics/drawable/Drawable;
    .param p4, "mask"    # Landroid/graphics/Path;

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 61
    iput-object p3, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;->mBadge:Landroid/graphics/drawable/Drawable;

    .line 62
    iput-object p4, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;->mMask:Landroid/graphics/Path;

    .line 64
    new-instance v0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$MyConstantState;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    .line 65
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p4}, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$MyConstantState;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;Landroid/graphics/drawable/Drawable$ConstantState;Landroid/graphics/drawable/Drawable$ConstantState;Landroid/graphics/Path;)V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;->mConstantState:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 66
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Path;Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Path;)V

    return-void
.end method

.method public static createFolderAdaptiveIcon(Lcom/android/launcher3/views/ActivityContext;ILandroid/graphics/Point;)Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;
    .locals 24
    .param p0, "activity"    # Lcom/android/launcher3/views/ActivityContext;
    .param p1, "folderId"    # I
    .param p2, "size"    # Landroid/graphics/Point;

    .line 80
    move-object/from16 v1, p2

    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertNonUiThread()V

    .line 81
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_P:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 82
    return-object v2

    .line 86
    :cond_0
    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    if-eq v0, v3, :cond_1

    .line 87
    return-object v2

    .line 89
    :cond_1
    iget v3, v1, Landroid/graphics/Point;->x:I

    .line 92
    .local v3, "requestedSize":I
    invoke-interface/range {p0 .. p0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v11, v0, Lcom/android/launcher3/DeviceProfile;->folderIconSizePx:I

    .line 93
    .local v11, "drawingSize":I
    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 94
    .local v12, "foregroundSize":I
    sub-int v0, v12, v3

    int-to-float v13, v0

    .line 96
    .local v13, "shift":F
    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    move-object v14, v0

    .line 97
    .local v14, "background":Landroid/graphics/Picture;
    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    move-object v15, v0

    .line 98
    .local v15, "foreground":Landroid/graphics/Picture;
    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    move-object v10, v0

    .line 100
    .local v10, "badge":Landroid/graphics/Picture;
    invoke-virtual {v14, v3, v3}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v16

    .line 101
    .local v16, "bgCanvas":Landroid/graphics/Canvas;
    invoke-virtual {v10, v3, v3}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v17

    .line 103
    .local v17, "badgeCanvas":Landroid/graphics/Canvas;
    invoke-virtual {v15, v12, v12}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v9

    .line 104
    .local v9, "fgCanvas":Landroid/graphics/Canvas;
    invoke-virtual {v9, v13, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 107
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    move-object v8, v0

    .line 108
    .local v8, "mask":Landroid/graphics/Path;
    neg-float v0, v13

    neg-float v4, v13

    int-to-float v5, v3

    add-float v21, v5, v13

    int-to-float v5, v3

    add-float v22, v5, v13

    sget-object v23, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move-object/from16 v18, v8

    move/from16 v19, v0

    move/from16 v20, v4

    invoke-virtual/range {v18 .. v23}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 114
    :try_start_0
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v7, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$$ExternalSyntheticLambda0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v4, v7

    move-object/from16 v5, p0

    move/from16 v6, p1

    move-object v2, v7

    move v7, v3

    move-object v1, v8

    .end local v8    # "mask":Landroid/graphics/Path;
    .local v1, "mask":Landroid/graphics/Path;
    move-object/from16 v8, v16

    move-object/from16 v19, v9

    .end local v9    # "fgCanvas":Landroid/graphics/Canvas;
    .local v19, "fgCanvas":Landroid/graphics/Canvas;
    move-object/from16 v20, v10

    .end local v10    # "badge":Landroid/graphics/Picture;
    .local v20, "badge":Landroid/graphics/Picture;
    move-object/from16 v10, v17

    :try_start_1
    invoke-direct/range {v4 .. v10}, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/views/ActivityContext;IILandroid/graphics/Canvas;Landroid/graphics/Canvas;Landroid/graphics/Canvas;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/LooperExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 120
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    invoke-virtual {v14}, Landroid/graphics/Picture;->endRecording()V

    .line 126
    invoke-virtual {v15}, Landroid/graphics/Picture;->endRecording()V

    .line 127
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Picture;->endRecording()V

    .line 128
    nop

    .line 132
    invoke-static {v15}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 133
    .local v0, "fgBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 137
    .local v2, "foregroundPaint":Landroid/graphics/Paint;
    new-instance v4, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;

    new-instance v5, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$BitmapRendererDrawable;

    new-instance v6, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$$ExternalSyntheticLambda1;

    invoke-direct {v6, v14}, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$$ExternalSyntheticLambda1;-><init>(Landroid/graphics/Picture;)V

    invoke-direct {v5, v6}, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$BitmapRendererDrawable;-><init>(Lcom/android/launcher3/icons/BitmapRenderer;)V

    new-instance v6, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$BitmapRendererDrawable;

    new-instance v7, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$$ExternalSyntheticLambda2;

    invoke-direct {v7, v0, v13, v2}, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$$ExternalSyntheticLambda2;-><init>(Landroid/graphics/Bitmap;FLandroid/graphics/Paint;)V

    invoke-direct {v6, v7}, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$BitmapRendererDrawable;-><init>(Lcom/android/launcher3/icons/BitmapRenderer;)V

    new-instance v7, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$BitmapRendererDrawable;

    new-instance v8, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$$ExternalSyntheticLambda3;

    move-object/from16 v9, v20

    .end local v20    # "badge":Landroid/graphics/Picture;
    .local v9, "badge":Landroid/graphics/Picture;
    invoke-direct {v8, v9}, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$$ExternalSyntheticLambda3;-><init>(Landroid/graphics/Picture;)V

    invoke-direct {v7, v8}, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$BitmapRendererDrawable;-><init>(Lcom/android/launcher3/icons/BitmapRenderer;)V

    invoke-direct {v4, v5, v6, v7, v1}, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Path;)V

    return-object v4

    .line 125
    .end local v0    # "fgBitmap":Landroid/graphics/Bitmap;
    .end local v2    # "foregroundPaint":Landroid/graphics/Paint;
    .end local v9    # "badge":Landroid/graphics/Picture;
    .restart local v20    # "badge":Landroid/graphics/Picture;
    :catchall_0
    move-exception v0

    move-object/from16 v9, v20

    .end local v20    # "badge":Landroid/graphics/Picture;
    .restart local v9    # "badge":Landroid/graphics/Picture;
    goto :goto_1

    .line 121
    .end local v9    # "badge":Landroid/graphics/Picture;
    .restart local v20    # "badge":Landroid/graphics/Picture;
    :catch_0
    move-exception v0

    move-object/from16 v9, v20

    .end local v20    # "badge":Landroid/graphics/Picture;
    .restart local v9    # "badge":Landroid/graphics/Picture;
    goto :goto_0

    .line 125
    .end local v1    # "mask":Landroid/graphics/Path;
    .end local v19    # "fgCanvas":Landroid/graphics/Canvas;
    .restart local v8    # "mask":Landroid/graphics/Path;
    .local v9, "fgCanvas":Landroid/graphics/Canvas;
    .restart local v10    # "badge":Landroid/graphics/Picture;
    :catchall_1
    move-exception v0

    move-object v1, v8

    move-object/from16 v19, v9

    move-object v9, v10

    .end local v8    # "mask":Landroid/graphics/Path;
    .end local v10    # "badge":Landroid/graphics/Picture;
    .restart local v1    # "mask":Landroid/graphics/Path;
    .local v9, "badge":Landroid/graphics/Picture;
    .restart local v19    # "fgCanvas":Landroid/graphics/Canvas;
    goto :goto_1

    .line 121
    .end local v1    # "mask":Landroid/graphics/Path;
    .end local v19    # "fgCanvas":Landroid/graphics/Canvas;
    .restart local v8    # "mask":Landroid/graphics/Path;
    .local v9, "fgCanvas":Landroid/graphics/Canvas;
    .restart local v10    # "badge":Landroid/graphics/Picture;
    :catch_1
    move-exception v0

    move-object v1, v8

    move-object/from16 v19, v9

    move-object v9, v10

    .line 122
    .end local v8    # "mask":Landroid/graphics/Path;
    .end local v10    # "badge":Landroid/graphics/Picture;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v1    # "mask":Landroid/graphics/Path;
    .local v9, "badge":Landroid/graphics/Picture;
    .restart local v19    # "fgCanvas":Landroid/graphics/Canvas;
    :goto_0
    :try_start_2
    const-string v2, "FolderAdaptiveIcon"

    const-string v4, "Unable to create folder icon"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 123
    nop

    .line 125
    invoke-virtual {v14}, Landroid/graphics/Picture;->endRecording()V

    .line 126
    invoke-virtual {v15}, Landroid/graphics/Picture;->endRecording()V

    .line 127
    invoke-virtual {v9}, Landroid/graphics/Picture;->endRecording()V

    .line 123
    const/4 v2, 0x0

    return-object v2

    .line 125
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v0

    :goto_1
    invoke-virtual {v14}, Landroid/graphics/Picture;->endRecording()V

    .line 126
    invoke-virtual {v15}, Landroid/graphics/Picture;->endRecording()V

    .line 127
    invoke-virtual {v9}, Landroid/graphics/Picture;->endRecording()V

    .line 128
    throw v0
.end method

.method private static initLayersOnUiThread(Lcom/android/launcher3/folder/FolderIcon;ILandroid/graphics/Canvas;Landroid/graphics/Canvas;Landroid/graphics/Canvas;)V
    .locals 9
    .param p0, "icon"    # Lcom/android/launcher3/folder/FolderIcon;
    .param p1, "size"    # I
    .param p2, "backgroundCanvas"    # Landroid/graphics/Canvas;
    .param p3, "foregroundCanvas"    # Landroid/graphics/Canvas;
    .param p4, "badgeCanvas"    # Landroid/graphics/Canvas;

    .line 148
    sget-object v0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewBounds(Landroid/graphics/Rect;)V

    .line 149
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 151
    .local v1, "previewSize":I
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v2

    .line 152
    .local v2, "bg":Lcom/android/launcher3/folder/PreviewBackground;
    sub-int v3, p1, v1

    div-int/lit8 v3, v3, 0x2

    .line 153
    .local v3, "margin":I
    iget v4, v0, Landroid/graphics/Rect;->left:I

    neg-int v4, v4

    add-int/2addr v4, v3

    int-to-float v4, v4

    .line 154
    .local v4, "previewShiftX":F
    iget v0, v0, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    add-int/2addr v0, v3

    int-to-float v0, v0

    .line 158
    .local v0, "previewShiftY":F
    invoke-virtual {p4}, Landroid/graphics/Canvas;->save()I

    .line 159
    invoke-virtual {p4, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 160
    invoke-virtual {p0, p4}, Lcom/android/launcher3/folder/FolderIcon;->drawDot(Landroid/graphics/Canvas;)V

    .line 161
    invoke-virtual {p4}, Landroid/graphics/Canvas;->restore()V

    .line 164
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    .line 165
    invoke-virtual {p3, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 166
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/PreviewItemManager;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/android/launcher3/folder/PreviewItemManager;->draw(Landroid/graphics/Canvas;)V

    .line 167
    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    .line 170
    new-instance v5, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 171
    .local v5, "backgroundPaint":Landroid/graphics/Paint;
    invoke-virtual {v2}, Lcom/android/launcher3/folder/PreviewBackground;->getBgColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 172
    invoke-virtual {v2, p2}, Lcom/android/launcher3/folder/PreviewBackground;->drawShadow(Landroid/graphics/Canvas;)V

    .line 173
    int-to-float v6, p1

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    int-to-float v8, p1

    div-float/2addr v8, v7

    invoke-virtual {v2}, Lcom/android/launcher3/folder/PreviewBackground;->getRadius()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p2, v6, v8, v7, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 174
    invoke-virtual {v2, p2}, Lcom/android/launcher3/folder/PreviewBackground;->drawBackgroundStroke(Landroid/graphics/Canvas;)V

    .line 175
    return-void
.end method

.method static synthetic lambda$createFolderAdaptiveIcon$0(Lcom/android/launcher3/views/ActivityContext;IILandroid/graphics/Canvas;Landroid/graphics/Canvas;Landroid/graphics/Canvas;)V
    .locals 4
    .param p0, "activity"    # Lcom/android/launcher3/views/ActivityContext;
    .param p1, "folderId"    # I
    .param p2, "requestedSize"    # I
    .param p3, "bgCanvas"    # Landroid/graphics/Canvas;
    .param p4, "fgCanvas"    # Landroid/graphics/Canvas;
    .param p5, "badgeCanvas"    # Landroid/graphics/Canvas;

    .line 115
    invoke-interface {p0, p1}, Lcom/android/launcher3/views/ActivityContext;->findFolderIcon(I)Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v0

    .line 116
    .local v0, "icon":Lcom/android/launcher3/folder/FolderIcon;
    if-eqz v0, :cond_0

    .line 119
    invoke-static {v0, p2, p3, p4, p5}, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;->initLayersOnUiThread(Lcom/android/launcher3/folder/FolderIcon;ILandroid/graphics/Canvas;Landroid/graphics/Canvas;Landroid/graphics/Canvas;)V

    .line 120
    return-void

    .line 117
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Folder not found with id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic lambda$createFolderAdaptiveIcon$1(Landroid/graphics/Picture;Landroid/graphics/Canvas;)V
    .locals 0
    .param p0, "background"    # Landroid/graphics/Picture;
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 138
    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    return-void
.end method

.method static synthetic lambda$createFolderAdaptiveIcon$2(Landroid/graphics/Bitmap;FLandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 2
    .param p0, "fgBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "shift"    # F
    .param p2, "foregroundPaint"    # Landroid/graphics/Paint;
    .param p3, "c"    # Landroid/graphics/Canvas;

    .line 140
    neg-float v0, p1

    neg-float v1, p1

    invoke-virtual {p3, p0, v0, v1, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method static synthetic lambda$createFolderAdaptiveIcon$3(Landroid/graphics/Picture;Landroid/graphics/Canvas;)V
    .locals 0
    .param p0, "badge"    # Landroid/graphics/Picture;
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 141
    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    return-void
.end method


# virtual methods
.method public getBadge()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;->mBadge:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;->mConstantState:Landroid/graphics/drawable/Drawable$ConstantState;

    return-object v0
.end method

.method public getIconMask()Landroid/graphics/Path;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;->mMask:Landroid/graphics/Path;

    return-object v0
.end method
