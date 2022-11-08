.class public Lcom/android/launcher3/folder/FolderAnimationManager;
.super Ljava/lang/Object;
.source "FolderAnimationManager.java"


# static fields
.field private static final FOLDER_NAME_ALPHA_DURATION:I = 0x20

.field private static final LARGE_FOLDER_FOOTER_DURATION:I = 0x80


# instance fields
.field private mBgColorAnimator:Landroid/animation/ObjectAnimator;

.field private mContent:Lcom/android/launcher3/folder/FolderPagedView;

.field private mContext:Landroid/content/Context;

.field private final mDelay:I

.field private mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

.field private final mDuration:I

.field private mFolder:Lcom/android/launcher3/folder/Folder;

.field private mFolderBackground:Landroid/graphics/drawable/GradientDrawable;

.field private mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

.field private final mFolderInterpolator:Landroid/animation/TimeInterpolator;

.field private final mIsOpening:Z

.field private final mLargeFolderPreviewItemCloseInterpolator:Landroid/animation/TimeInterpolator;

.field private final mLargeFolderPreviewItemOpenInterpolator:Landroid/animation/TimeInterpolator;

.field private mPreviewBackground:Lcom/android/launcher3/folder/PreviewBackground;

.field private final mPreviewVerifier:Lcom/android/launcher3/folder/FolderGridOrganizer;

.field private final mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContent(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/FolderPagedView;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFolder(Lcom/android/launcher3/folder/FolderAnimationManager;)Lcom/android/launcher3/folder/Folder;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsOpening(Lcom/android/launcher3/folder/FolderAnimationManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    return p0
.end method

.method public constructor <init>(Lcom/android/launcher3/folder/Folder;Z)V
    .locals 3
    .param p1, "folder"    # Lcom/android/launcher3/folder/Folder;
    .param p2, "isOpening"    # Z

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;-><init>(FFF)V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    .line 89
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    .line 90
    iget-object v0, p1, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    .line 91
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 93
    iget-object v0, p1, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    .line 94
    iget-object v0, v0, Lcom/android/launcher3/folder/FolderIcon;->mBackground:Lcom/android/launcher3/folder/PreviewBackground;

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewBackground:Lcom/android/launcher3/folder/PreviewBackground;

    .line 96
    invoke-virtual {p1}, Lcom/android/launcher3/folder/Folder;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContext:Landroid/content/Context;

    .line 97
    iget-object v0, p1, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 98
    new-instance v1, Lcom/android/launcher3/folder/FolderGridOrganizer;

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {v1, v0}, Lcom/android/launcher3/folder/FolderGridOrganizer;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    iput-object v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewVerifier:Lcom/android/launcher3/folder/FolderGridOrganizer;

    .line 100
    iput-boolean p2, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    .line 102
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 103
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/android/launcher3/R$integer;->config_materialFolderExpandDuration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mDuration:I

    .line 104
    sget v1, Lcom/android/launcher3/R$integer;->config_folderDelay:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mDelay:I

    .line 106
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/launcher3/R$interpolator;->folder_interpolator:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderInterpolator:Landroid/animation/TimeInterpolator;

    .line 108
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/launcher3/R$interpolator;->large_folder_preview_item_open_interpolator:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mLargeFolderPreviewItemOpenInterpolator:Landroid/animation/TimeInterpolator;

    .line 110
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/launcher3/R$interpolator;->large_folder_preview_item_close_interpolator:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mLargeFolderPreviewItemCloseInterpolator:Landroid/animation/TimeInterpolator;

    .line 112
    return-void
.end method

.method private addPreviewItemAnimators(Landroid/animation/AnimatorSet;FII)V
    .locals 34
    .param p1, "animatorSet"    # Landroid/animation/AnimatorSet;
    .param p2, "folderScale"    # F
    .param p3, "previewItemOffsetX"    # I
    .param p4, "previewItemOffsetY"    # I

    .line 336
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->getLayoutRule()Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    move-result-object v8

    .line 337
    .local v8, "rule":Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentPage()I

    move-result v0

    const/4 v9, 0x1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v9

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    move v10, v0

    .line 338
    .local v10, "isOnFirstPage":Z
    nop

    .line 339
    if-eqz v10, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentPage()I

    move-result v0

    .line 338
    :goto_1
    invoke-direct {v6, v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->getPreviewIconsOnPage(I)Ljava/util/List;

    move-result-object v11

    .line 340
    .local v11, "itemsInPreview":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/BubbleTextView;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    .line 341
    .local v12, "numItemsInPreview":I
    if-eqz v10, :cond_2

    .line 342
    move v0, v12

    goto :goto_2

    :cond_2
    const/4 v0, 0x4

    :goto_2
    move v14, v0

    .line 344
    .local v14, "numItemsInFirstPagePreview":I
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/folder/FolderAnimationManager;->getPreviewItemInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v15

    .line 346
    .local v15, "previewItemInterpolator":Landroid/animation/TimeInterpolator;
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v5

    .line 347
    .local v5, "cwc":Lcom/android/launcher3/ShortcutAndWidgetContainer;
    const/4 v0, 0x0

    move v4, v0

    .local v4, "i":I
    :goto_3
    if-ge v4, v12, :cond_7

    .line 348
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/launcher3/BubbleTextView;

    .line 349
    .local v3, "btv":Lcom/android/launcher3/BubbleTextView;
    invoke-virtual {v3}, Lcom/android/launcher3/BubbleTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 352
    .local v2, "btvLp":Lcom/android/launcher3/CellLayout$LayoutParams;
    iput-boolean v9, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 353
    invoke-virtual {v5, v3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setupLp(Landroid/view/View;)V

    .line 356
    invoke-virtual {v8, v14}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->scaleForItem(I)F

    move-result v16

    .line 357
    .local v16, "previewScale":F
    invoke-virtual {v8}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->getIconSize()F

    move-result v0

    mul-float v17, v0, v16

    .line 358
    .local v17, "previewSize":F
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getIconSize()I

    move-result v0

    int-to-float v0, v0

    div-float v18, v17, v0

    .line 360
    .local v18, "iconScale":F
    div-float v1, v18, p2

    .line 361
    .local v1, "initialScale":F
    const/high16 v19, 0x3f800000    # 1.0f

    .line 362
    .local v19, "finalScale":F
    iget-boolean v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_4

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    .line 363
    .local v0, "scale":F
    :goto_4
    invoke-virtual {v3, v0}, Lcom/android/launcher3/BubbleTextView;->setScaleX(F)V

    .line 364
    invoke-virtual {v3, v0}, Lcom/android/launcher3/BubbleTextView;->setScaleY(F)V

    .line 367
    iget-object v13, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-virtual {v8, v4, v14, v13}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    .line 370
    iget v13, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->width:I

    invoke-virtual {v3}, Lcom/android/launcher3/BubbleTextView;->getIconSize()I

    move-result v20

    sub-int v13, v13, v20

    int-to-float v13, v13

    mul-float v13, v13, v18

    float-to-int v13, v13

    div-int/lit8 v13, v13, 0x2

    .line 372
    .local v13, "iconOffsetX":I
    iget-object v9, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v9, v9, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    move/from16 v21, v0

    .end local v0    # "scale":F
    .local v21, "scale":F
    int-to-float v0, v13

    sub-float/2addr v9, v0

    move/from16 v0, p3

    move/from16 v22, v4

    .end local v4    # "i":I
    .local v22, "i":I
    int-to-float v4, v0

    add-float/2addr v9, v4

    div-float v9, v9, p2

    float-to-int v9, v9

    .line 374
    .local v9, "previewPosX":I
    invoke-virtual {v3}, Lcom/android/launcher3/BubbleTextView;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    mul-float v23, v4, v18

    .line 375
    .local v23, "paddingTop":F
    iget-object v4, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iget v4, v4, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    move-object/from16 v24, v8

    move/from16 v8, p4

    .end local v8    # "rule":Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;
    .local v24, "rule":Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;
    int-to-float v0, v8

    add-float/2addr v4, v0

    sub-float v4, v4, v23

    div-float v4, v4, p2

    float-to-int v4, v4

    .line 378
    .local v4, "previewPosY":I
    iget v0, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    sub-int v0, v9, v0

    int-to-float v0, v0

    .line 379
    .local v0, "xDistance":F
    move-object/from16 v25, v5

    .end local v5    # "cwc":Lcom/android/launcher3/ShortcutAndWidgetContainer;
    .local v25, "cwc":Lcom/android/launcher3/ShortcutAndWidgetContainer;
    iget v5, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    sub-int v5, v4, v5

    int-to-float v5, v5

    .line 381
    .local v5, "yDistance":F
    move-object/from16 v26, v2

    .end local v2    # "btvLp":Lcom/android/launcher3/CellLayout$LayoutParams;
    .local v26, "btvLp":Lcom/android/launcher3/CellLayout$LayoutParams;
    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    move/from16 v27, v4

    .end local v4    # "previewPosY":I
    .local v27, "previewPosY":I
    const/4 v4, 0x0

    invoke-direct {v6, v3, v2, v0, v4}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v2

    .line 382
    .local v2, "translationX":Landroid/animation/Animator;
    invoke-virtual {v2, v15}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 383
    invoke-direct {v6, v7, v2}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 385
    move/from16 v28, v0

    .end local v0    # "xDistance":F
    .local v28, "xDistance":F
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-direct {v6, v3, v0, v5, v4}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v4

    .line 386
    .local v4, "translationY":Landroid/animation/Animator;
    invoke-virtual {v4, v15}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 387
    invoke-direct {v6, v7, v4}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 389
    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v6, v3, v0, v1, v8}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v8

    .line 390
    .local v8, "scaleAnimator":Landroid/animation/Animator;
    invoke-virtual {v8, v15}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 391
    invoke-direct {v6, v7, v8}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 393
    iget-object v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result v0

    move/from16 v20, v9

    const/4 v9, 0x4

    .end local v9    # "previewPosX":I
    .local v20, "previewPosX":I
    if-le v0, v9, :cond_6

    .line 396
    iget-boolean v0, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    iget v9, v6, Lcom/android/launcher3/folder/FolderAnimationManager;->mDelay:I

    if-eqz v0, :cond_4

    goto :goto_5

    :cond_4
    mul-int/lit8 v9, v9, 0x2

    .line 397
    .local v9, "delay":I
    :goto_5
    if-eqz v0, :cond_5

    .line 398
    move/from16 v29, v1

    .end local v1    # "initialScale":F
    .local v29, "initialScale":F
    int-to-long v0, v9

    invoke-virtual {v2, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 399
    int-to-long v0, v9

    invoke-virtual {v4, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 400
    int-to-long v0, v9

    invoke-virtual {v8, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    goto :goto_6

    .line 397
    .end local v29    # "initialScale":F
    .restart local v1    # "initialScale":F
    :cond_5
    move/from16 v29, v1

    .line 402
    .end local v1    # "initialScale":F
    .restart local v29    # "initialScale":F
    :goto_6
    invoke-virtual {v2}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    move/from16 v30, v10

    move-object/from16 v31, v11

    .end local v10    # "isOnFirstPage":Z
    .end local v11    # "itemsInPreview":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/BubbleTextView;>;"
    .local v30, "isOnFirstPage":Z
    .local v31, "itemsInPreview":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/BubbleTextView;>;"
    int-to-long v10, v9

    sub-long/2addr v0, v10

    invoke-virtual {v2, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 403
    invoke-virtual {v4}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    int-to-long v10, v9

    sub-long/2addr v0, v10

    invoke-virtual {v4, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 404
    invoke-virtual {v8}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    int-to-long v10, v9

    sub-long/2addr v0, v10

    invoke-virtual {v8, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    goto :goto_7

    .line 393
    .end local v9    # "delay":I
    .end local v29    # "initialScale":F
    .end local v30    # "isOnFirstPage":Z
    .end local v31    # "itemsInPreview":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/BubbleTextView;>;"
    .restart local v1    # "initialScale":F
    .restart local v10    # "isOnFirstPage":Z
    .restart local v11    # "itemsInPreview":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/BubbleTextView;>;"
    :cond_6
    move/from16 v29, v1

    move/from16 v30, v10

    move-object/from16 v31, v11

    .line 407
    .end local v1    # "initialScale":F
    .end local v10    # "isOnFirstPage":Z
    .end local v11    # "itemsInPreview":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/BubbleTextView;>;"
    .restart local v29    # "initialScale":F
    .restart local v30    # "isOnFirstPage":Z
    .restart local v31    # "itemsInPreview":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/BubbleTextView;>;"
    :goto_7
    new-instance v9, Lcom/android/launcher3/folder/FolderAnimationManager$2;

    move/from16 v10, v21

    move/from16 v11, v28

    .end local v21    # "scale":F
    .end local v28    # "xDistance":F
    .local v10, "scale":F
    .local v11, "xDistance":F
    move-object v0, v9

    move/from16 v21, v29

    .end local v29    # "initialScale":F
    .local v21, "initialScale":F
    move-object/from16 v1, p0

    move-object/from16 v28, v2

    .end local v2    # "translationX":Landroid/animation/Animator;
    .local v28, "translationX":Landroid/animation/Animator;
    move-object v2, v3

    move-object/from16 v29, v3

    .end local v3    # "btv":Lcom/android/launcher3/BubbleTextView;
    .local v29, "btv":Lcom/android/launcher3/BubbleTextView;
    move v3, v11

    move-object/from16 v32, v4

    .end local v4    # "translationY":Landroid/animation/Animator;
    .local v32, "translationY":Landroid/animation/Animator;
    move v4, v5

    move/from16 v33, v5

    .end local v5    # "yDistance":F
    .local v33, "yDistance":F
    move/from16 v5, v21

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/folder/FolderAnimationManager$2;-><init>(Lcom/android/launcher3/folder/FolderAnimationManager;Lcom/android/launcher3/BubbleTextView;FFF)V

    invoke-virtual {v7, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 347
    .end local v8    # "scaleAnimator":Landroid/animation/Animator;
    .end local v10    # "scale":F
    .end local v11    # "xDistance":F
    .end local v13    # "iconOffsetX":I
    .end local v16    # "previewScale":F
    .end local v17    # "previewSize":F
    .end local v18    # "iconScale":F
    .end local v19    # "finalScale":F
    .end local v20    # "previewPosX":I
    .end local v21    # "initialScale":F
    .end local v23    # "paddingTop":F
    .end local v26    # "btvLp":Lcom/android/launcher3/CellLayout$LayoutParams;
    .end local v27    # "previewPosY":I
    .end local v28    # "translationX":Landroid/animation/Animator;
    .end local v29    # "btv":Lcom/android/launcher3/BubbleTextView;
    .end local v32    # "translationY":Landroid/animation/Animator;
    .end local v33    # "yDistance":F
    add-int/lit8 v4, v22, 0x1

    move-object/from16 v8, v24

    move-object/from16 v5, v25

    move/from16 v10, v30

    move-object/from16 v11, v31

    const/4 v9, 0x1

    .end local v22    # "i":I
    .local v4, "i":I
    goto/16 :goto_3

    .line 430
    .end local v4    # "i":I
    .end local v24    # "rule":Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;
    .end local v25    # "cwc":Lcom/android/launcher3/ShortcutAndWidgetContainer;
    .end local v30    # "isOnFirstPage":Z
    .end local v31    # "itemsInPreview":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/BubbleTextView;>;"
    .local v5, "cwc":Lcom/android/launcher3/ShortcutAndWidgetContainer;
    .local v8, "rule":Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;
    .local v10, "isOnFirstPage":Z
    .local v11, "itemsInPreview":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/BubbleTextView;>;"
    :cond_7
    return-void
.end method

.method private getAnimator(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "property"    # Landroid/util/Property;
    .param p3, "v1"    # F
    .param p4, "v2"    # F

    .line 459
    iget-boolean v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 460
    new-array v0, v3, [F

    aput p3, v0, v2

    aput p4, v0, v1

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_0

    .line 461
    :cond_0
    new-array v0, v3, [F

    aput p4, v0, v2

    aput p3, v0, v1

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 459
    :goto_0
    return-object v0
.end method

.method private getAnimator(Landroid/graphics/drawable/GradientDrawable;Ljava/lang/String;II)Landroid/animation/ObjectAnimator;
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/GradientDrawable;
    .param p2, "property"    # Ljava/lang/String;
    .param p3, "v1"    # I
    .param p4, "v2"    # I

    .line 465
    iget-boolean v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 466
    new-array v0, v3, [I

    aput p3, v0, v2

    aput p4, v0, v1

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_0

    .line 467
    :cond_0
    new-array v0, v3, [I

    aput p4, v0, v2

    aput p3, v0, v1

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 465
    :goto_0
    return-object v0
.end method

.method private getPreviewIconsOnPage(I)Ljava/util/List;
    .locals 2
    .param p1, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/launcher3/BubbleTextView;",
            ">;"
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewVerifier:Lcom/android/launcher3/folder/FolderGridOrganizer;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v1, v1, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderGridOrganizer;->setFolderInfo(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderGridOrganizer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    .line 328
    invoke-virtual {v1}, Lcom/android/launcher3/folder/Folder;->getIconsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/folder/FolderGridOrganizer;->previewItemsForPage(ILjava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 327
    return-object v0
.end method

.method private getPreviewItemInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .line 447
    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderAnimationManager;->isLargeFolder()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 451
    iget-boolean v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mLargeFolderPreviewItemOpenInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_0

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mLargeFolderPreviewItemCloseInterpolator:Landroid/animation/TimeInterpolator;

    .line 451
    :goto_0
    return-object v0

    .line 455
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method private isLargeFolder()Z
    .locals 2

    .line 443
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V
    .locals 6
    .param p1, "as"    # Landroid/animation/AnimatorSet;
    .param p2, "a"    # Landroid/animation/Animator;

    .line 433
    invoke-virtual {p2}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v3

    iget v5, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mDuration:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;JI)V

    .line 434
    return-void
.end method

.method private play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;JI)V
    .locals 2
    .param p1, "as"    # Landroid/animation/AnimatorSet;
    .param p2, "a"    # Landroid/animation/Animator;
    .param p3, "startDelay"    # J
    .param p5, "duration"    # I

    .line 437
    invoke-virtual {p2, p3, p4}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 438
    int-to-long v0, p5

    invoke-virtual {p2, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 439
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 440
    return-void
.end method


# virtual methods
.method public getAnimator()Landroid/animation/AnimatorSet;
    .locals 58

    .line 125
    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    .line 126
    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    .line 127
    .local v10, "lp":Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;
    iget-object v0, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/PreviewItemManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewItemManager;->recomputePreviewDrawingParams()V

    .line 128
    iget-object v0, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->getLayoutRule()Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    move-result-object v11

    .line 129
    .local v11, "rule":Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;
    const/4 v6, 0x0

    invoke-direct {v9, v6}, Lcom/android/launcher3/folder/FolderAnimationManager;->getPreviewIconsOnPage(I)Ljava/util/List;

    move-result-object v12

    .line 132
    .local v12, "itemsInPreview":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/BubbleTextView;>;"
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v13, v0

    .line 133
    .local v13, "folderIconPos":Landroid/graphics/Rect;
    iget-object v0, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    .line 134
    invoke-virtual {v0, v1, v13}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v14

    .line 135
    .local v14, "scaleRelativeToDragLayer":F
    iget-object v0, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewBackground;->getScaledRadius()I

    move-result v15

    .line 136
    .local v15, "scaledRadius":I
    mul-int/lit8 v0, v15, 0x2

    int-to-float v0, v0

    mul-float v16, v0, v14

    .line 139
    .local v16, "initialSize":F
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->scaleForItem(I)F

    move-result v17

    .line 140
    .local v17, "previewScale":F
    invoke-virtual {v11}, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->getIconSize()F

    move-result v0

    mul-float v18, v0, v17

    .line 142
    .local v18, "previewSize":F
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getIconSize()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v18, v0

    mul-float/2addr v0, v14

    move v8, v0

    .local v0, "initialScale":F
    goto :goto_0

    .line 146
    .end local v0    # "initialScale":F
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    move v8, v0

    .line 148
    .local v8, "initialScale":F
    :goto_0
    const/high16 v19, 0x3f800000    # 1.0f

    .line 149
    .local v19, "finalScale":F
    iget-boolean v0, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v0, :cond_1

    move v0, v8

    goto :goto_1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    move v5, v0

    .line 150
    .local v5, "scale":F
    iget-object v0, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/folder/Folder;->setPivotX(F)V

    .line 151
    iget-object v0, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/folder/Folder;->setPivotY(F)V

    .line 154
    iget-object v0, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0, v5}, Lcom/android/launcher3/folder/FolderPagedView;->setScaleX(F)V

    .line 155
    iget-object v0, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0, v5}, Lcom/android/launcher3/folder/FolderPagedView;->setScaleY(F)V

    .line 156
    iget-object v0, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/folder/FolderPagedView;->setPivotX(F)V

    .line 157
    iget-object v0, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/folder/FolderPagedView;->setPivotY(F)V

    .line 158
    iget-object v0, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setScaleX(F)V

    .line 159
    iget-object v0, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setScaleY(F)V

    .line 160
    iget-object v0, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setPivotX(F)V

    .line 161
    iget-object v0, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setPivotY(F)V

    .line 166
    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, v18, v0

    float-to-int v0, v0

    .line 167
    .local v0, "previewItemOffsetX":I
    iget-object v1, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 168
    iget v1, v10, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->width:I

    int-to-float v1, v1

    mul-float/2addr v1, v8

    sub-float v1, v1, v16

    int-to-float v2, v0

    sub-float/2addr v1, v2

    float-to-int v0, v1

    move/from16 v20, v0

    goto :goto_2

    .line 167
    :cond_2
    move/from16 v20, v0

    .line 171
    .end local v0    # "previewItemOffsetX":I
    .local v20, "previewItemOffsetX":I
    :goto_2
    iget-object v0, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v8

    float-to-int v4, v0

    .line 172
    .local v4, "paddingOffsetX":I
    iget-object v0, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v8

    float-to-int v2, v0

    .line 174
    .local v2, "paddingOffsetY":I
    iget v0, v13, Landroid/graphics/Rect;->left:I

    iget-object v1, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/Folder;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewBackground:Lcom/android/launcher3/folder/PreviewBackground;

    .line 175
    invoke-virtual {v1}, Lcom/android/launcher3/folder/PreviewBackground;->getOffsetX()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, v4

    sub-int v21, v0, v20

    .line 176
    .local v21, "initialX":I
    iget v0, v13, Landroid/graphics/Rect;->top:I

    iget-object v1, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/Folder;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewBackground:Lcom/android/launcher3/folder/PreviewBackground;

    .line 177
    invoke-virtual {v1}, Lcom/android/launcher3/folder/PreviewBackground;->getOffsetY()I

    move-result v1

    add-int/2addr v0, v1

    sub-int v22, v0, v2

    .line 178
    .local v22, "initialY":I
    iget v0, v10, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    sub-int v0, v21, v0

    int-to-float v1, v0

    .line 179
    .local v1, "xDistance":F
    iget v0, v10, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    sub-int v0, v22, v0

    int-to-float v0, v0

    .line 182
    .local v0, "yDistance":F
    iget-object v3, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/launcher3/R$attr;->folderPreviewColor:I

    invoke-static {v3, v7}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v7

    .line 183
    .local v7, "initialColor":I
    iget-object v3, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/launcher3/R$attr;->folderBackgroundColor:I

    invoke-static {v3, v6}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v6

    .line 185
    .local v6, "finalColor":I
    iget-object v3, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 186
    iget-object v3, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderBackground:Landroid/graphics/drawable/GradientDrawable;

    move/from16 v26, v5

    .end local v5    # "scale":F
    .local v26, "scale":F
    iget-boolean v5, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v5, :cond_3

    move v5, v7

    goto :goto_3

    :cond_3
    move v5, v6

    :goto_3
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 189
    add-int v5, v4, v20

    .line 190
    .local v5, "totalOffsetX":I
    new-instance v3, Landroid/graphics/Rect;

    move/from16 v27, v4

    .end local v4    # "paddingOffsetX":I
    .local v27, "paddingOffsetX":I
    int-to-float v4, v5

    add-float v4, v4, v16

    .line 192
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    move-object/from16 v33, v11

    .end local v11    # "rule":Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;
    .local v33, "rule":Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;
    int-to-float v11, v2

    add-float v11, v11, v16

    .line 193
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-direct {v3, v5, v2, v4, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v29, v3

    .line 194
    .local v29, "startRect":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    iget v4, v10, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->width:I

    iget v11, v10, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->height:I

    move/from16 v28, v2

    const/4 v2, 0x0

    .end local v2    # "paddingOffsetY":I
    .local v28, "paddingOffsetY":I
    invoke-direct {v3, v2, v2, v4, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v30, v3

    .line 195
    .local v30, "endRect":Landroid/graphics/Rect;
    iget-object v2, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadius()F

    move-result v11

    .line 198
    .local v11, "finalRadius":F
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v3, v2

    .line 201
    .local v3, "a":Landroid/animation/AnimatorSet;
    new-instance v2, Lcom/android/launcher3/anim/PropertyResetListener;

    sget-object v4, Lcom/android/launcher3/BubbleTextView;->TEXT_ALPHA_PROPERTY:Landroid/util/Property;

    .line 202
    move/from16 v31, v5

    const/high16 v24, 0x3f800000    # 1.0f

    .end local v5    # "totalOffsetX":I
    .local v31, "totalOffsetX":I
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/android/launcher3/anim/PropertyResetListener;-><init>(Landroid/util/Property;Ljava/lang/Object;)V

    move-object v5, v2

    .line 203
    .local v5, "colorResetListener":Lcom/android/launcher3/anim/PropertyResetListener;
    iget-object v2, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v4, v2, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentPage()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/launcher3/folder/Folder;->getItemsOnPage(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/BubbleTextView;

    .line 204
    .local v4, "icon":Lcom/android/launcher3/BubbleTextView;
    move-object/from16 v32, v2

    iget-boolean v2, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v2, :cond_4

    .line 205
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Lcom/android/launcher3/BubbleTextView;->setTextVisibility(Z)V

    .line 207
    :cond_4
    iget-boolean v2, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    invoke-virtual {v4, v2}, Lcom/android/launcher3/BubbleTextView;->createTextAlphaAnimator(Z)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 208
    .local v2, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 209
    invoke-direct {v9, v3, v2}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 210
    .end local v2    # "anim":Landroid/animation/ObjectAnimator;
    .end local v4    # "icon":Lcom/android/launcher3/BubbleTextView;
    move-object/from16 v2, v32

    goto :goto_4

    .line 212
    :cond_5
    iget-object v2, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderBackground:Landroid/graphics/drawable/GradientDrawable;

    const-string v4, "color"

    invoke-direct {v9, v2, v4, v7, v6}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator(Landroid/graphics/drawable/GradientDrawable;Ljava/lang/String;II)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mBgColorAnimator:Landroid/animation/ObjectAnimator;

    .line 213
    invoke-direct {v9, v3, v2}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 214
    iget-object v2, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    move-object/from16 v32, v5

    const/4 v5, 0x0

    .end local v5    # "colorResetListener":Lcom/android/launcher3/anim/PropertyResetListener;
    .local v32, "colorResetListener":Lcom/android/launcher3/anim/PropertyResetListener;
    invoke-direct {v9, v2, v4, v1, v5}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v2

    invoke-direct {v9, v3, v2}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 215
    iget-object v2, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-direct {v9, v2, v4, v0, v5}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v2

    invoke-direct {v9, v3, v2}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 216
    iget-object v2, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v2, v2, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    sget-object v4, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v9, v2, v4, v8, v5}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v2

    invoke-direct {v9, v3, v2}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 217
    iget-object v2, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v2, v2, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    sget-object v4, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    invoke-direct {v9, v2, v4, v8, v5}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v2

    invoke-direct {v9, v3, v2}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 221
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/folder/FolderAnimationManager;->isLargeFolder()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 222
    iget-boolean v2, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v2, :cond_6

    .line 223
    const/16 v2, 0x80

    .line 224
    .local v2, "footerAlphaDuration":I
    iget v4, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mDuration:I

    sub-int/2addr v4, v2

    move/from16 v40, v2

    move v5, v4

    .local v4, "footerStartDelay":I
    goto :goto_5

    .line 226
    .end local v2    # "footerAlphaDuration":I
    .end local v4    # "footerStartDelay":I
    :cond_6
    const/4 v2, 0x0

    .line 227
    .restart local v2    # "footerAlphaDuration":I
    const/4 v4, 0x0

    move/from16 v40, v2

    move v5, v4

    .restart local v4    # "footerStartDelay":I
    goto :goto_5

    .line 230
    .end local v2    # "footerAlphaDuration":I
    .end local v4    # "footerStartDelay":I
    :cond_7
    const/4 v4, 0x0

    .line 231
    .restart local v4    # "footerStartDelay":I
    iget v2, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mDuration:I

    move/from16 v40, v2

    move v5, v4

    .line 233
    .end local v4    # "footerStartDelay":I
    .local v5, "footerStartDelay":I
    .local v40, "footerAlphaDuration":I
    :goto_5
    iget-object v2, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v2, v2, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    move/from16 v34, v0

    move/from16 v23, v6

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .end local v0    # "yDistance":F
    .end local v6    # "finalColor":I
    .local v23, "finalColor":I
    .local v34, "yDistance":F
    invoke-direct {v9, v2, v4, v6, v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v2

    move/from16 v41, v7

    .end local v7    # "initialColor":I
    .local v41, "initialColor":I
    int-to-long v6, v5

    move/from16 v42, v34

    .end local v34    # "yDistance":F
    .local v42, "yDistance":F
    move-object/from16 v0, p0

    move/from16 v43, v1

    .end local v1    # "xDistance":F
    .local v43, "xDistance":F
    move-object v1, v3

    move/from16 v44, v28

    .end local v28    # "paddingOffsetY":I
    .local v44, "paddingOffsetY":I
    move-object/from16 v45, v12

    move/from16 v46, v27

    move-object v12, v3

    .end local v3    # "a":Landroid/animation/AnimatorSet;
    .end local v27    # "paddingOffsetX":I
    .local v12, "a":Landroid/animation/AnimatorSet;
    .local v45, "itemsInPreview":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/BubbleTextView;>;"
    .local v46, "paddingOffsetX":I
    move-wide v3, v6

    move/from16 v50, v5

    move/from16 v48, v31

    move-object/from16 v49, v32

    .end local v5    # "footerStartDelay":I
    .end local v31    # "totalOffsetX":I
    .end local v32    # "colorResetListener":Lcom/android/launcher3/anim/PropertyResetListener;
    .local v48, "totalOffsetX":I
    .local v49, "colorResetListener":Lcom/android/launcher3/anim/PropertyResetListener;
    .local v50, "footerStartDelay":I
    move/from16 v5, v40

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;JI)V

    .line 236
    invoke-static {}, Lcom/android/launcher3/graphics/IconShape;->getShape()Lcom/android/launcher3/graphics/IconShape;

    move-result-object v27

    iget-object v0, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-boolean v1, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    xor-int/lit8 v32, v1, 0x1

    move-object/from16 v28, v0

    move/from16 v31, v11

    invoke-virtual/range {v27 .. v32}, Lcom/android/launcher3/graphics/IconShape;->createRevealAnimator(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FZ)Landroid/animation/Animator;

    move-result-object v0

    invoke-direct {v9, v12, v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 240
    iget-object v0, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->folderCellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->folderCellWidthPx:I

    mul-int/lit8 v1, v1, 0x2

    add-int v27, v0, v1

    .line 242
    .local v27, "width":I
    iget-object v0, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->folderCellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    mul-int/lit8 v1, v1, 0x2

    add-int v7, v0, v1

    .line 244
    .local v7, "height":I
    iget-boolean v0, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v0, :cond_8

    iget-object v0, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentPage()I

    move-result v0

    goto :goto_6

    :cond_8
    iget-object v0, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getDestinationPage()I

    move-result v0

    :goto_6
    move/from16 v28, v0

    .line 245
    .local v28, "page":I
    iget-object v0, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getPaddingLeft()I

    move-result v0

    iget v1, v10, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->width:I

    mul-int v1, v1, v28

    add-int v6, v0, v1

    .line 246
    .local v6, "left":I
    new-instance v0, Landroid/graphics/Rect;

    add-int v1, v6, v27

    const/4 v2, 0x0

    invoke-direct {v0, v6, v2, v1, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v36, v0

    .line 247
    .local v36, "contentStart":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    iget v1, v10, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->width:I

    add-int/2addr v1, v6

    iget v3, v10, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->height:I

    invoke-direct {v0, v6, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v37, v0

    .line 248
    .local v37, "contentEnd":Landroid/graphics/Rect;
    invoke-static {}, Lcom/android/launcher3/graphics/IconShape;->getShape()Lcom/android/launcher3/graphics/IconShape;

    move-result-object v34

    iget-object v0, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    .line 249
    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getContent()Lcom/android/launcher3/folder/FolderPagedView;

    move-result-object v35

    iget-boolean v0, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    .line 248
    xor-int/lit8 v39, v0, 0x1

    move/from16 v38, v11

    invoke-virtual/range {v34 .. v39}, Lcom/android/launcher3/graphics/IconShape;->createRevealAnimator(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FZ)Landroid/animation/Animator;

    move-result-object v0

    invoke-direct {v9, v12, v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 253
    iget-object v0, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    iget-boolean v1, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v1, :cond_9

    const/4 v3, 0x0

    goto :goto_7

    :cond_9
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_7
    invoke-virtual {v0, v3}, Lcom/android/launcher3/folder/FolderNameEditText;->setAlpha(F)V

    .line 254
    iget-object v0, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v9, v0, v1, v3, v2}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v2

    .line 255
    iget-boolean v0, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    const-wide/16 v31, 0x0

    if-eqz v0, :cond_a

    const-wide/16 v3, 0x20

    goto :goto_8

    :cond_a
    move-wide/from16 v3, v31

    .line 256
    :goto_8
    const/16 v1, 0x20

    if-eqz v0, :cond_b

    iget v0, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mDuration:I

    sub-int/2addr v0, v1

    move v5, v0

    goto :goto_9

    :cond_b
    move v5, v1

    .line 254
    :goto_9
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;JI)V

    .line 259
    iget-object v0, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getContentAreaHeight()I

    move-result v0

    int-to-float v5, v0

    .line 260
    .local v5, "normalHeight":F
    mul-float v24, v5, v8

    .line 261
    .local v24, "scaledHeight":F
    sub-float v3, v5, v24

    .line 262
    .local v3, "diff":F
    iget-object v0, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    neg-float v2, v3

    const/4 v4, 0x0

    invoke-direct {v9, v0, v1, v2, v4}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v0

    invoke-direct {v9, v12, v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;)V

    .line 265
    iget v0, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mDuration:I

    div-int/lit8 v2, v0, 0x2

    .line 266
    .local v2, "midDuration":I
    iget-object v0, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    sget-object v1, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    iget-object v4, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/Folder;->getElevation()F

    move-result v4

    neg-float v4, v4

    move/from16 v34, v3

    const/4 v3, 0x0

    .end local v3    # "diff":F
    .local v34, "diff":F
    invoke-direct {v9, v0, v1, v4, v3}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator(Landroid/view/View;Landroid/util/Property;FF)Landroid/animation/Animator;

    move-result-object v35

    .line 267
    .local v35, "z":Landroid/animation/Animator;
    iget-boolean v0, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v0, :cond_c

    int-to-long v0, v2

    move-wide v3, v0

    goto :goto_a

    :cond_c
    move-wide/from16 v3, v31

    :goto_a
    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v31, v2

    .end local v2    # "midDuration":I
    .local v31, "midDuration":I
    move-object/from16 v2, v35

    move/from16 v32, v34

    .end local v34    # "diff":F
    .local v32, "diff":F
    move/from16 v34, v5

    .end local v5    # "normalHeight":F
    .local v34, "normalHeight":F
    move/from16 v5, v31

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/folder/FolderAnimationManager;->play(Landroid/animation/AnimatorSet;Landroid/animation/Animator;JI)V

    .line 270
    iget-object v0, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v5

    .line 271
    .local v5, "cellLayout":Lcom/android/launcher3/CellLayout;
    iget-object v0, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getClipChildren()Z

    move-result v38

    .line 272
    .local v38, "folderClipChildren":Z
    iget-object v0, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getClipToPadding()Z

    move-result v39

    .line 273
    .local v39, "folderClipToPadding":Z
    iget-object v0, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getClipChildren()Z

    move-result v47

    .line 274
    .local v47, "contentClipChildren":Z
    iget-object v0, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getClipToPadding()Z

    move-result v51

    .line 275
    .local v51, "contentClipToPadding":Z
    invoke-virtual {v5}, Lcom/android/launcher3/CellLayout;->getClipChildren()Z

    move-result v52

    .line 276
    .local v52, "cellLayoutClipChildren":Z
    invoke-virtual {v5}, Lcom/android/launcher3/CellLayout;->getClipToPadding()Z

    move-result v53

    .line 278
    .local v53, "cellLayoutClipPadding":Z
    iget-object v0, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/Folder;->setClipChildren(Z)V

    .line 279
    iget-object v0, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/Folder;->setClipToPadding(Z)V

    .line 280
    iget-object v0, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->setClipChildren(Z)V

    .line 281
    iget-object v0, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->setClipToPadding(Z)V

    .line 282
    invoke-virtual {v5, v1}, Lcom/android/launcher3/CellLayout;->setClipChildren(Z)V

    .line 283
    invoke-virtual {v5, v1}, Lcom/android/launcher3/CellLayout;->setClipToPadding(Z)V

    .line 285
    new-instance v4, Lcom/android/launcher3/folder/FolderAnimationManager$1;

    move-object v0, v4

    move-object/from16 v1, p0

    move/from16 v2, v38

    move/from16 v3, v39

    move-object/from16 v25, v10

    move-object v10, v4

    .end local v10    # "lp":Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;
    .local v25, "lp":Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;
    move/from16 v4, v47

    move-object/from16 v54, v5

    .end local v5    # "cellLayout":Lcom/android/launcher3/CellLayout;
    .local v54, "cellLayout":Lcom/android/launcher3/CellLayout;
    move/from16 v5, v51

    move/from16 v55, v6

    .end local v6    # "left":I
    .local v55, "left":I
    move-object/from16 v6, v54

    move/from16 v56, v7

    .end local v7    # "height":I
    .local v56, "height":I
    move/from16 v7, v52

    move/from16 v57, v8

    .end local v8    # "initialScale":F
    .local v57, "initialScale":F
    move/from16 v8, v53

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/folder/FolderAnimationManager$1;-><init>(Lcom/android/launcher3/folder/FolderAnimationManager;ZZZZLcom/android/launcher3/CellLayout;ZZ)V

    invoke-virtual {v12, v10}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 311
    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 312
    .local v1, "animator":Landroid/animation/Animator;
    iget-object v2, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 313
    .end local v1    # "animator":Landroid/animation/Animator;
    goto :goto_b

    .line 315
    :cond_d
    iget-object v0, v9, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewBackground;->getRadius()I

    move-result v0

    sub-int v0, v15, v0

    .line 316
    .local v0, "radiusDiff":I
    div-float v8, v57, v14

    add-int v1, v20, v0

    invoke-direct {v9, v12, v8, v1, v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->addPreviewItemAnimators(Landroid/animation/AnimatorSet;FII)V

    .line 320
    return-object v12
.end method

.method public getBgColorAnimator()Landroid/animation/ObjectAnimator;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mBgColorAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method
