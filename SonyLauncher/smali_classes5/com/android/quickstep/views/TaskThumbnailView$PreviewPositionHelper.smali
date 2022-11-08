.class public Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;
.super Ljava/lang/Object;
.source "TaskThumbnailView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/views/TaskThumbnailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreviewPositionHelper"
.end annotation


# static fields
.field private static final EMPTY_RECT_F:Landroid/graphics/RectF;


# instance fields
.field private final mClippedInsets:Landroid/graphics/RectF;

.field private mIsOrientationChanged:Z

.field private final mMatrix:Landroid/graphics/Matrix;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsOrientationChanged(Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mIsOrientationChanged:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMatrix(Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;)Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsOrientationChanged(Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mIsOrientationChanged:Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 413
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->EMPTY_RECT_F:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mClippedInsets:Landroid/graphics/RectF;

    .line 417
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method private getRotationDelta(II)I
    .locals 1
    .param p1, "oldRotation"    # I
    .param p2, "newRotation"    # I

    .line 606
    sub-int v0, p2, p1

    .line 607
    .local v0, "delta":I
    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x4

    .line 608
    :cond_0
    return v0
.end method

.method private isOrientationChange(I)Z
    .locals 2
    .param p1, "deltaRotation"    # I

    .line 617
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private setThumbnailRotation(ILandroid/graphics/RectF;FLandroid/graphics/Rect;Lcom/android/launcher3/DeviceProfile;)V
    .locals 7
    .param p1, "deltaRotate"    # I
    .param p2, "thumbnailInsets"    # Landroid/graphics/RectF;
    .param p3, "scale"    # F
    .param p4, "thumbnailPosition"    # Landroid/graphics/Rect;
    .param p5, "dp"    # Lcom/android/launcher3/DeviceProfile;

    .line 622
    const/4 v0, 0x0

    .line 623
    .local v0, "newLeftInset":F
    const/4 v1, 0x0

    .line 624
    .local v1, "newTopInset":F
    const/4 v2, 0x0

    .line 625
    .local v2, "translateX":F
    const/4 v3, 0x0

    .line 627
    .local v3, "translateY":F
    iget-object v4, p0, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mMatrix:Landroid/graphics/Matrix;

    mul-int/lit8 v5, p1, 0x5a

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 628
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 635
    :pswitch_0
    iget v0, p2, Landroid/graphics/RectF;->top:F

    .line 636
    iget v1, p2, Landroid/graphics/RectF;->right:F

    .line 637
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v3, v4

    .line 638
    goto :goto_0

    .line 640
    :pswitch_1
    iget v4, p2, Landroid/graphics/RectF;->top:F

    neg-float v0, v4

    .line 641
    iget v4, p2, Landroid/graphics/RectF;->left:F

    neg-float v1, v4

    .line 642
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v2, v4

    .line 643
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v3, v4

    goto :goto_0

    .line 630
    :pswitch_2
    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    .line 631
    iget v1, p2, Landroid/graphics/RectF;->left:F

    .line 632
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v2, v4

    .line 633
    nop

    .line 646
    :goto_0
    iget-object v4, p0, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mClippedInsets:Landroid/graphics/RectF;

    mul-float v5, v0, p3

    mul-float v6, v1, p3

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 647
    iget-object v4, p0, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 648
    invoke-static {p5}, Lcom/android/quickstep/views/TaskView;->useFullThumbnail(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 649
    iget-object v4, p0, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mClippedInsets:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    neg-float v5, v5

    iget-object v6, p0, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mClippedInsets:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    neg-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 651
    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getInsetsToDrawInFullscreen(Lcom/android/launcher3/DeviceProfile;)Landroid/graphics/RectF;
    .locals 1
    .param p1, "dp"    # Lcom/android/launcher3/DeviceProfile;

    .line 657
    invoke-static {p1}, Lcom/android/quickstep/views/TaskView;->useFullThumbnail(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mClippedInsets:Landroid/graphics/RectF;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->EMPTY_RECT_F:Landroid/graphics/RectF;

    :goto_0
    return-object v0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public updateThumbnailMatrix(Landroid/graphics/Rect;Lcom/android/systemui/shared/recents/model/ThumbnailData;IILcom/android/launcher3/DeviceProfile;IZ)V
    .locals 29
    .param p1, "thumbnailBounds"    # Landroid/graphics/Rect;
    .param p2, "thumbnailData"    # Lcom/android/systemui/shared/recents/model/ThumbnailData;
    .param p3, "canvasWidth"    # I
    .param p4, "canvasHeight"    # I
    .param p5, "dp"    # Lcom/android/launcher3/DeviceProfile;
    .param p6, "currentRotation"    # I
    .param p7, "isRtl"    # Z

    .line 430
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    const/4 v0, 0x0

    .line 433
    .local v0, "isRotated":Z
    iget v11, v7, Lcom/android/systemui/shared/recents/model/ThumbnailData;->rotation:I

    .line 434
    .local v11, "thumbnailRotation":I
    move/from16 v12, p6

    invoke-direct {v6, v12, v11}, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->getRotationDelta(II)I

    move-result v13

    .line 435
    .local v13, "deltaRotate":I
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    move-object v14, v1

    .line 436
    .local v14, "thumbnailClipHint":Landroid/graphics/RectF;
    invoke-static/range {p5 .. p5}, Lcom/android/quickstep/views/TaskView;->clipLeft(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 437
    iget-object v1, v7, Lcom/android/systemui/shared/recents/model/ThumbnailData;->insets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, v14, Landroid/graphics/RectF;->left:F

    .line 439
    :cond_0
    invoke-static/range {p5 .. p5}, Lcom/android/quickstep/views/TaskView;->clipRight(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 440
    iget-object v1, v7, Lcom/android/systemui/shared/recents/model/ThumbnailData;->insets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iput v1, v14, Landroid/graphics/RectF;->right:F

    .line 442
    :cond_1
    invoke-static/range {p5 .. p5}, Lcom/android/quickstep/views/TaskView;->clipTop(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 443
    iget-object v1, v7, Lcom/android/systemui/shared/recents/model/ThumbnailData;->insets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iput v1, v14, Landroid/graphics/RectF;->top:F

    .line 445
    :cond_2
    invoke-static/range {p5 .. p5}, Lcom/android/quickstep/views/TaskView;->clipBottom(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 446
    iget-object v1, v7, Lcom/android/systemui/shared/recents/model/ThumbnailData;->insets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iput v1, v14, Landroid/graphics/RectF;->bottom:F

    .line 449
    :cond_3
    iget v15, v7, Lcom/android/systemui/shared/recents/model/ThumbnailData;->scale:F

    .line 454
    .local v15, "scale":F
    iget-boolean v1, v10, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_4

    iget v1, v7, Lcom/android/systemui/shared/recents/model/ThumbnailData;->windowingMode:I

    if-ne v1, v3, :cond_4

    iget-boolean v1, v10, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-nez v1, :cond_4

    move v1, v3

    goto :goto_0

    :cond_4
    move v1, v2

    :goto_0
    move/from16 v16, v1

    .line 457
    .local v16, "windowingModeSupportsRotation":Z
    invoke-direct {v6, v13}, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->isOrientationChange(I)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v16, :cond_5

    move v1, v3

    goto :goto_1

    :cond_5
    move v1, v2

    .line 459
    .local v1, "isOrientationDifferent":Z
    :goto_1
    const/4 v5, 0x0

    if-eqz v8, :cond_16

    if-eqz v9, :cond_16

    cmpl-float v4, v15, v5

    if-nez v4, :cond_6

    move/from16 v18, v1

    move/from16 v19, v11

    goto/16 :goto_8

    .line 465
    :cond_6
    if-lez v13, :cond_7

    if-eqz v16, :cond_7

    move v2, v3

    :cond_7
    move v0, v2

    .line 467
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v15

    .line 468
    .local v2, "surfaceWidth":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v15

    .line 469
    .local v3, "surfaceHeight":F
    iget v4, v14, Landroid/graphics/RectF;->left:F

    iget v5, v14, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    sub-float v4, v2, v4

    .line 471
    .local v4, "availableWidth":F
    iget v5, v14, Landroid/graphics/RectF;->top:F

    move/from16 v18, v1

    .end local v1    # "isOrientationDifferent":Z
    .local v18, "isOrientationDifferent":Z
    iget v1, v14, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v1

    sub-float v1, v3, v5

    .line 474
    .local v1, "availableHeight":F
    int-to-float v5, v8

    move/from16 v19, v11

    .end local v11    # "thumbnailRotation":I
    .local v19, "thumbnailRotation":I
    int-to-float v11, v9

    div-float/2addr v5, v11

    .line 475
    .local v5, "canvasAspect":F
    if-eqz v0, :cond_8

    .line 476
    div-float v11, v1, v4

    goto :goto_2

    .line 477
    :cond_8
    div-float v11, v4, v1

    :goto_2
    nop

    .line 478
    .local v11, "availableAspect":F
    move/from16 v20, v1

    .end local v1    # "availableHeight":F
    .local v20, "availableHeight":F
    const v1, 0x3dcccccd    # 0.1f

    invoke-static {v5, v11, v1}, Lcom/android/launcher3/Utilities;->isRelativePercentDifferenceGreaterThan(FFF)Z

    move-result v1

    .line 480
    .local v1, "isAspectLargelyDifferent":Z
    if-eqz v0, :cond_9

    if-eqz v1, :cond_9

    .line 482
    const/4 v0, 0x0

    .line 483
    const/16 v18, 0x0

    .line 486
    :cond_9
    if-eqz v1, :cond_e

    .line 488
    invoke-static/range {p5 .. p5}, Lcom/android/quickstep/views/TaskView;->clipLeft(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v21

    if-nez v21, :cond_a

    .line 489
    move/from16 v21, v0

    .end local v0    # "isRotated":Z
    .local v21, "isRotated":Z
    iget-object v0, v7, Lcom/android/systemui/shared/recents/model/ThumbnailData;->letterboxInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iput v0, v14, Landroid/graphics/RectF;->left:F

    goto :goto_3

    .line 488
    .end local v21    # "isRotated":Z
    .restart local v0    # "isRotated":Z
    :cond_a
    move/from16 v21, v0

    .line 491
    .end local v0    # "isRotated":Z
    .restart local v21    # "isRotated":Z
    :goto_3
    invoke-static/range {p5 .. p5}, Lcom/android/quickstep/views/TaskView;->clipRight(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 492
    iget-object v0, v7, Lcom/android/systemui/shared/recents/model/ThumbnailData;->letterboxInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iput v0, v14, Landroid/graphics/RectF;->right:F

    .line 494
    :cond_b
    invoke-static/range {p5 .. p5}, Lcom/android/quickstep/views/TaskView;->clipTop(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 495
    iget-object v0, v7, Lcom/android/systemui/shared/recents/model/ThumbnailData;->letterboxInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, v14, Landroid/graphics/RectF;->top:F

    .line 497
    :cond_c
    invoke-static/range {p5 .. p5}, Lcom/android/quickstep/views/TaskView;->clipBottom(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 498
    iget-object v0, v7, Lcom/android/systemui/shared/recents/model/ThumbnailData;->letterboxInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iput v0, v14, Landroid/graphics/RectF;->bottom:F

    .line 500
    :cond_d
    iget v0, v14, Landroid/graphics/RectF;->left:F

    move/from16 v22, v1

    .end local v1    # "isAspectLargelyDifferent":Z
    .local v22, "isAspectLargelyDifferent":Z
    iget v1, v14, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    sub-float v4, v2, v0

    .line 502
    iget v0, v14, Landroid/graphics/RectF;->top:F

    iget v1, v14, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v1

    sub-float v1, v3, v0

    .end local v20    # "availableHeight":F
    .local v1, "availableHeight":F
    goto :goto_4

    .line 486
    .end local v21    # "isRotated":Z
    .end local v22    # "isAspectLargelyDifferent":Z
    .restart local v0    # "isRotated":Z
    .local v1, "isAspectLargelyDifferent":Z
    .restart local v20    # "availableHeight":F
    :cond_e
    move/from16 v21, v0

    move/from16 v22, v1

    .end local v0    # "isRotated":Z
    .end local v1    # "isAspectLargelyDifferent":Z
    .restart local v21    # "isRotated":Z
    .restart local v22    # "isAspectLargelyDifferent":Z
    move/from16 v1, v20

    .line 507
    .end local v20    # "availableHeight":F
    .local v1, "availableHeight":F
    :goto_4
    if-eqz v18, :cond_f

    .line 508
    int-to-float v0, v9

    .line 509
    .local v0, "targetW":F
    move/from16 v20, v0

    .end local v0    # "targetW":F
    .local v20, "targetW":F
    int-to-float v0, v8

    move/from16 v28, v5

    move v5, v0

    move/from16 v0, v20

    move/from16 v20, v28

    .local v0, "targetH":F
    goto :goto_5

    .line 511
    .end local v0    # "targetH":F
    .end local v20    # "targetW":F
    :cond_f
    int-to-float v0, v8

    .line 512
    .local v0, "targetW":F
    move/from16 v20, v0

    .end local v0    # "targetW":F
    .restart local v20    # "targetW":F
    int-to-float v0, v9

    move/from16 v28, v5

    move v5, v0

    move/from16 v0, v20

    move/from16 v20, v28

    .line 514
    .restart local v0    # "targetW":F
    .local v5, "targetH":F
    .local v20, "canvasAspect":F
    :goto_5
    div-float v23, v0, v5

    .line 520
    .local v23, "targetAspect":F
    move/from16 v24, v4

    .line 521
    .local v24, "croppedWidth":F
    div-float v25, v24, v23

    .line 522
    .local v25, "croppedHeight":F
    cmpl-float v26, v25, v1

    if-lez v26, :cond_11

    .line 523
    move/from16 v25, v1

    .line 524
    cmpg-float v26, v25, v5

    if-gez v26, :cond_10

    .line 525
    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v25

    .line 527
    :cond_10
    mul-float v24, v25, v23

    .line 530
    cmpl-float v26, v24, v2

    if-lez v26, :cond_11

    .line 531
    move/from16 v24, v2

    .line 532
    div-float v25, v24, v23

    .line 537
    :cond_11
    if-eqz p7, :cond_12

    .line 538
    move/from16 v26, v2

    .end local v2    # "surfaceWidth":F
    .local v26, "surfaceWidth":F
    iget v2, v14, Landroid/graphics/RectF;->left:F

    sub-float v27, v4, v24

    add-float v2, v2, v27

    iput v2, v14, Landroid/graphics/RectF;->left:F

    .line 539
    iget v2, v14, Landroid/graphics/RectF;->right:F

    move/from16 v27, v5

    const/4 v5, 0x0

    .end local v5    # "targetH":F
    .local v27, "targetH":F
    cmpg-float v2, v2, v5

    if-gez v2, :cond_13

    .line 540
    iget v2, v14, Landroid/graphics/RectF;->left:F

    iget v5, v14, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v5

    iput v2, v14, Landroid/graphics/RectF;->left:F

    .line 541
    const/4 v5, 0x0

    iput v5, v14, Landroid/graphics/RectF;->right:F

    goto :goto_6

    .line 544
    .end local v26    # "surfaceWidth":F
    .end local v27    # "targetH":F
    .restart local v2    # "surfaceWidth":F
    .restart local v5    # "targetH":F
    :cond_12
    move/from16 v26, v2

    move/from16 v27, v5

    const/4 v5, 0x0

    .end local v2    # "surfaceWidth":F
    .end local v5    # "targetH":F
    .restart local v26    # "surfaceWidth":F
    .restart local v27    # "targetH":F
    iget v2, v14, Landroid/graphics/RectF;->right:F

    sub-float v17, v4, v24

    add-float v2, v2, v17

    iput v2, v14, Landroid/graphics/RectF;->right:F

    .line 545
    iget v2, v14, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v2, v5

    if-gez v2, :cond_13

    .line 546
    iget v2, v14, Landroid/graphics/RectF;->right:F

    iget v5, v14, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v5

    iput v2, v14, Landroid/graphics/RectF;->right:F

    .line 547
    const/4 v5, 0x0

    iput v5, v14, Landroid/graphics/RectF;->left:F

    .line 550
    :cond_13
    :goto_6
    iget v2, v14, Landroid/graphics/RectF;->bottom:F

    sub-float v17, v1, v25

    add-float v2, v2, v17

    iput v2, v14, Landroid/graphics/RectF;->bottom:F

    .line 551
    iget v2, v14, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v2, v5

    if-gez v2, :cond_14

    .line 552
    iget v2, v14, Landroid/graphics/RectF;->bottom:F

    iget v5, v14, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v5

    iput v2, v14, Landroid/graphics/RectF;->bottom:F

    .line 553
    const/4 v5, 0x0

    iput v5, v14, Landroid/graphics/RectF;->top:F

    goto :goto_7

    .line 554
    :cond_14
    iget v2, v14, Landroid/graphics/RectF;->bottom:F

    cmpg-float v2, v2, v5

    if-gez v2, :cond_15

    .line 555
    iget v2, v14, Landroid/graphics/RectF;->top:F

    iget v5, v14, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v5

    iput v2, v14, Landroid/graphics/RectF;->top:F

    .line 556
    const/4 v5, 0x0

    iput v5, v14, Landroid/graphics/RectF;->bottom:F

    .line 559
    :cond_15
    :goto_7
    mul-float v2, v24, v15

    div-float v2, v0, v2

    move v4, v2

    move/from16 v11, v18

    .local v2, "thumbnailScale":F
    goto :goto_9

    .line 459
    .end local v2    # "thumbnailScale":F
    .end local v3    # "surfaceHeight":F
    .end local v4    # "availableWidth":F
    .end local v18    # "isOrientationDifferent":Z
    .end local v19    # "thumbnailRotation":I
    .end local v20    # "canvasAspect":F
    .end local v21    # "isRotated":Z
    .end local v22    # "isAspectLargelyDifferent":Z
    .end local v23    # "targetAspect":F
    .end local v24    # "croppedWidth":F
    .end local v25    # "croppedHeight":F
    .end local v26    # "surfaceWidth":F
    .end local v27    # "targetH":F
    .local v0, "isRotated":Z
    .local v1, "isOrientationDifferent":Z
    .local v11, "thumbnailRotation":I
    :cond_16
    move/from16 v18, v1

    move/from16 v19, v11

    .line 462
    .end local v1    # "isOrientationDifferent":Z
    .end local v11    # "thumbnailRotation":I
    .restart local v18    # "isOrientationDifferent":Z
    .restart local v19    # "thumbnailRotation":I
    :goto_8
    const/4 v2, 0x0

    move/from16 v21, v0

    move v4, v2

    move/from16 v11, v18

    .line 562
    .end local v0    # "isRotated":Z
    .end local v18    # "isOrientationDifferent":Z
    .local v4, "thumbnailScale":F
    .local v11, "isOrientationDifferent":Z
    .restart local v21    # "isRotated":Z
    :goto_9
    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v3

    .line 563
    .local v3, "splitScreenInsets":Landroid/graphics/Rect;
    if-nez v21, :cond_18

    .line 565
    iget-boolean v0, v10, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v0, :cond_17

    .line 566
    iget-object v0, v6, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mClippedInsets:Landroid/graphics/RectF;

    iget v1, v3, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    mul-float/2addr v1, v15

    iget v2, v3, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float/2addr v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    goto :goto_a

    .line 569
    :cond_17
    iget-object v0, v6, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mClippedInsets:Landroid/graphics/RectF;

    iget v1, v14, Landroid/graphics/RectF;->left:F

    mul-float/2addr v1, v15

    iget v2, v14, Landroid/graphics/RectF;->top:F

    mul-float/2addr v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 572
    :goto_a
    iget-object v0, v6, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mMatrix:Landroid/graphics/Matrix;

    iget v1, v14, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    mul-float/2addr v1, v15

    iget v2, v14, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    mul-float/2addr v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    move-object v7, v3

    move v12, v4

    move/from16 v17, v13

    move v13, v5

    goto :goto_b

    .line 576
    :cond_18
    move-object/from16 v0, p0

    move v1, v13

    move-object v2, v14

    move-object v7, v3

    .end local v3    # "splitScreenInsets":Landroid/graphics/Rect;
    .local v7, "splitScreenInsets":Landroid/graphics/Rect;
    move v3, v15

    move v12, v4

    .end local v4    # "thumbnailScale":F
    .local v12, "thumbnailScale":F
    move-object/from16 v4, p1

    move/from16 v17, v13

    move v13, v5

    .end local v13    # "deltaRotate":I
    .local v17, "deltaRotate":I
    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->setThumbnailRotation(ILandroid/graphics/RectF;FLandroid/graphics/Rect;Lcom/android/launcher3/DeviceProfile;)V

    .line 581
    :goto_b
    if-eqz v11, :cond_19

    .line 582
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v12

    .line 583
    .local v0, "widthWithInsets":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v12

    .local v1, "heightWithInsets":F
    goto :goto_c

    .line 585
    .end local v0    # "widthWithInsets":F
    .end local v1    # "heightWithInsets":F
    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v12

    .line 586
    .restart local v0    # "widthWithInsets":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v12

    .line 588
    .restart local v1    # "heightWithInsets":F
    :goto_c
    iget-object v2, v6, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mClippedInsets:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    mul-float/2addr v3, v12

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 589
    iget-object v2, v6, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mClippedInsets:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->top:F

    mul-float/2addr v3, v12

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 591
    iget-boolean v2, v10, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v2, :cond_1a

    .line 592
    iget-object v2, v6, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mClippedInsets:Landroid/graphics/RectF;

    iget v3, v7, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    mul-float/2addr v3, v15

    mul-float/2addr v3, v12

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 593
    iget-object v2, v6, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mClippedInsets:Landroid/graphics/RectF;

    iget v3, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    mul-float/2addr v3, v15

    mul-float/2addr v3, v12

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto :goto_d

    .line 595
    :cond_1a
    iget-object v2, v6, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mClippedInsets:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    sub-float v3, v0, v3

    int-to-float v4, v8

    sub-float/2addr v3, v4

    invoke-static {v13, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 597
    iget-object v2, v6, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mClippedInsets:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->top:F

    sub-float v3, v1, v3

    int-to-float v4, v9

    sub-float/2addr v3, v4

    invoke-static {v13, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 601
    :goto_d
    iget-object v2, v6, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v12, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 602
    iput-boolean v11, v6, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mIsOrientationChanged:Z

    .line 603
    return-void
.end method
