.class public Lcom/android/launcher3/DropTargetBar;
.super Landroid/widget/FrameLayout;
.source "DropTargetBar.java"

# interfaces
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;
.implements Lcom/android/launcher3/Insettable;


# static fields
.field protected static final DEFAULT_DRAG_FADE_DURATION:I = 0xaf

.field protected static final DEFAULT_INTERPOLATOR:Landroid/animation/TimeInterpolator;


# instance fields
.field private mCurrentAnimation:Landroid/view/ViewPropertyAnimator;

.field protected mDeferOnDragEnd:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private mDropTargets:[Lcom/android/launcher3/ButtonDropTarget;

.field private final mFadeAnimationEndRunnable:Ljava/lang/Runnable;

.field private mIsVertical:Z

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private mTempTargets:[Lcom/android/launcher3/ButtonDropTarget;

.field protected mVisible:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/android/launcher3/DropTargetBar;->DEFAULT_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance v0, Lcom/android/launcher3/DropTargetBar$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/DropTargetBar$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/DropTargetBar;)V

    iput-object v0, p0, Lcom/android/launcher3/DropTargetBar;->mFadeAnimationEndRunnable:Ljava/lang/Runnable;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/DropTargetBar;->mVisible:Z

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/DropTargetBar;->mIsVertical:Z

    .line 70
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/DropTargetBar;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    new-instance v0, Lcom/android/launcher3/DropTargetBar$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/DropTargetBar$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/DropTargetBar;)V

    iput-object v0, p0, Lcom/android/launcher3/DropTargetBar;->mFadeAnimationEndRunnable:Ljava/lang/Runnable;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/DropTargetBar;->mVisible:Z

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/DropTargetBar;->mIsVertical:Z

    .line 75
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/DropTargetBar;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 76
    return-void
.end method

.method private getVisibleButtons([Lcom/android/launcher3/ButtonDropTarget;)I
    .locals 7
    .param p1, "outVisibleButtons"    # [Lcom/android/launcher3/ButtonDropTarget;

    .line 281
    const/4 v0, 0x0

    .line 282
    .local v0, "visibleCount":I
    iget-object v1, p0, Lcom/android/launcher3/DropTargetBar;->mDropTargets:[Lcom/android/launcher3/ButtonDropTarget;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 283
    .local v4, "button":Lcom/android/launcher3/ButtonDropTarget;
    invoke-virtual {v4}, Lcom/android/launcher3/ButtonDropTarget;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 284
    aput-object v4, p1, v0

    .line 285
    add-int/lit8 v0, v0, 0x1

    .line 282
    .end local v4    # "button":Lcom/android/launcher3/ButtonDropTarget;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 288
    :cond_1
    return v0
.end method


# virtual methods
.method public animateToVisibility(Z)V
    .locals 4
    .param p1, "isVisible"    # Z

    .line 292
    sget-boolean v0, Lcom/android/launcher3/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v0, :cond_0

    .line 293
    const-string v0, "b/195031154"

    const-string v1, "8"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/DropTargetBar;->mVisible:Z

    if-eq v0, p1, :cond_3

    .line 296
    iput-boolean p1, p0, Lcom/android/launcher3/DropTargetBar;->mVisible:Z

    .line 299
    iget-object v0, p0, Lcom/android/launcher3/DropTargetBar;->mCurrentAnimation:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_1

    .line 300
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 301
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/DropTargetBar;->mCurrentAnimation:Landroid/view/ViewPropertyAnimator;

    .line 304
    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher3/DropTargetBar;->mVisible:Z

    if-eqz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 305
    .local v0, "finalAlpha":F
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/DropTargetBar;->getAlpha()F

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    .line 306
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/DropTargetBar;->setVisibility(I)V

    .line 307
    invoke-virtual {p0}, Lcom/android/launcher3/DropTargetBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/DropTargetBar;->DEFAULT_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 308
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xaf

    .line 309
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/DropTargetBar;->mFadeAnimationEndRunnable:Ljava/lang/Runnable;

    .line 310
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/DropTargetBar;->mCurrentAnimation:Landroid/view/ViewPropertyAnimator;

    .line 314
    .end local v0    # "finalAlpha":F
    :cond_3
    return-void
.end method

.method protected deferOnDragEnd()V
    .locals 1

    .line 332
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/DropTargetBar;->mDeferOnDragEnd:Z

    .line 333
    return-void
.end method

.method public getDropTargets()[Lcom/android/launcher3/ButtonDropTarget;
    .locals 1

    .line 345
    invoke-virtual {p0}, Lcom/android/launcher3/DropTargetBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/DropTargetBar;->mDropTargets:[Lcom/android/launcher3/ButtonDropTarget;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/launcher3/ButtonDropTarget;

    :goto_0
    return-object v0
.end method

.method synthetic lambda$new$0$com-android-launcher3-DropTargetBar()V
    .locals 0

    .line 52
    invoke-static {p0}, Lcom/android/launcher3/anim/AlphaUpdateListener;->updateVisibility(Landroid/view/View;)V

    return-void
.end method

.method public onDragEnd()V
    .locals 2

    .line 337
    iget-boolean v0, p0, Lcom/android/launcher3/DropTargetBar;->mDeferOnDragEnd:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 338
    invoke-virtual {p0, v1}, Lcom/android/launcher3/DropTargetBar;->animateToVisibility(Z)V

    goto :goto_0

    .line 340
    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher3/DropTargetBar;->mDeferOnDragEnd:Z

    .line 342
    :goto_0
    return-void
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 2
    .param p1, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p2, "options"    # Lcom/android/launcher3/dragndrop/DragOptions;

    .line 321
    sget-boolean v0, Lcom/android/launcher3/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v0, :cond_0

    .line 322
    const-string v0, "b/195031154"

    const-string v1, "7"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/DropTargetBar;->animateToVisibility(Z)V

    .line 325
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 80
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 81
    invoke-virtual {p0}, Lcom/android/launcher3/DropTargetBar;->getChildCount()I

    move-result v0

    new-array v0, v0, [Lcom/android/launcher3/ButtonDropTarget;

    iput-object v0, p0, Lcom/android/launcher3/DropTargetBar;->mDropTargets:[Lcom/android/launcher3/ButtonDropTarget;

    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/DropTargetBar;->mDropTargets:[Lcom/android/launcher3/ButtonDropTarget;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 83
    invoke-virtual {p0, v0}, Lcom/android/launcher3/DropTargetBar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/ButtonDropTarget;

    aput-object v2, v1, v0

    .line 84
    iget-object v1, p0, Lcom/android/launcher3/DropTargetBar;->mDropTargets:[Lcom/android/launcher3/ButtonDropTarget;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/android/launcher3/ButtonDropTarget;->setDropTargetBar(Lcom/android/launcher3/DropTargetBar;)V

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/DropTargetBar;->getChildCount()I

    move-result v0

    new-array v0, v0, [Lcom/android/launcher3/ButtonDropTarget;

    iput-object v0, p0, Lcom/android/launcher3/DropTargetBar;->mTempTargets:[Lcom/android/launcher3/ButtonDropTarget;

    .line 87
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 18
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 225
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/DropTargetBar;->mTempTargets:[Lcom/android/launcher3/ButtonDropTarget;

    invoke-direct {v0, v1}, Lcom/android/launcher3/DropTargetBar;->getVisibleButtons([Lcom/android/launcher3/ButtonDropTarget;)I

    move-result v1

    .line 226
    .local v1, "visibleCount":I
    if-nez v1, :cond_0

    .line 227
    return-void

    .line 230
    :cond_0
    iget-object v2, v0, Lcom/android/launcher3/DropTargetBar;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    .line 232
    .local v2, "dp":Lcom/android/launcher3/DeviceProfile;
    invoke-virtual {v2}, Lcom/android/launcher3/DeviceProfile;->getWorkspaceSpringLoadScale()F

    move-result v3

    .line 233
    .local v3, "scale":F
    iget-object v4, v0, Lcom/android/launcher3/DropTargetBar;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v4

    .line 235
    .local v4, "ws":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<*>;"
    iget-boolean v5, v2, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    const/4 v6, 0x2

    if-eqz v5, :cond_1

    .line 236
    sub-int v5, p4, p2

    div-int/2addr v5, v6

    .local v5, "barCenter":I
    goto :goto_0

    .line 238
    .end local v5    # "barCenter":I
    :cond_1
    invoke-virtual {v4}, Lcom/android/launcher3/Workspace;->getLeft()I

    move-result v5

    invoke-virtual {v4}, Lcom/android/launcher3/Workspace;->getRight()I

    move-result v7

    add-int/2addr v5, v7

    div-int/2addr v5, v6

    .line 239
    .local v5, "workspaceCenter":I
    invoke-virtual {v2}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, v2, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v8

    iget v8, v2, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    .line 240
    invoke-virtual {v2}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    iget-object v9, v2, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    add-int/2addr v7, v8

    div-int/2addr v7, v6

    .line 241
    .local v7, "cellLayoutCenter":I
    sub-int v8, v7, v5

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v8, v8

    .line 242
    .local v8, "cellLayoutCenterOffset":I
    add-int v9, v5, v8

    sub-int v9, v9, p2

    move v5, v9

    .line 245
    .end local v7    # "cellLayoutCenter":I
    .end local v8    # "cellLayoutCenterOffset":I
    .local v5, "barCenter":I
    :goto_0
    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v1, v7, :cond_2

    .line 246
    iget-object v7, v0, Lcom/android/launcher3/DropTargetBar;->mTempTargets:[Lcom/android/launcher3/ButtonDropTarget;

    aget-object v7, v7, v8

    .line 247
    .local v7, "button":Lcom/android/launcher3/ButtonDropTarget;
    invoke-virtual {v7}, Lcom/android/launcher3/ButtonDropTarget;->getMeasuredWidth()I

    move-result v9

    div-int/2addr v9, v6

    sub-int v9, v5, v9

    .line 248
    invoke-virtual {v7}, Lcom/android/launcher3/ButtonDropTarget;->getMeasuredWidth()I

    move-result v10

    div-int/2addr v10, v6

    add-int/2addr v10, v5

    invoke-virtual {v7}, Lcom/android/launcher3/ButtonDropTarget;->getMeasuredHeight()I

    move-result v6

    .line 247
    invoke-virtual {v7, v9, v8, v10, v6}, Lcom/android/launcher3/ButtonDropTarget;->layout(IIII)V

    .line 249
    .end local v7    # "button":Lcom/android/launcher3/ButtonDropTarget;
    move/from16 v16, v1

    move-object/from16 v17, v2

    goto/16 :goto_1

    :cond_2
    if-ne v1, v6, :cond_4

    .line 250
    iget v6, v2, Lcom/android/launcher3/DeviceProfile;->dropTargetGapPx:I

    .line 252
    .local v6, "buttonGap":I
    iget-object v9, v0, Lcom/android/launcher3/DropTargetBar;->mTempTargets:[Lcom/android/launcher3/ButtonDropTarget;

    aget-object v10, v9, v8

    .line 253
    .local v10, "leftButton":Lcom/android/launcher3/ButtonDropTarget;
    aget-object v7, v9, v7

    .line 254
    .local v7, "rightButton":Lcom/android/launcher3/ButtonDropTarget;
    iget-boolean v9, v2, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v9, :cond_3

    .line 255
    invoke-virtual {v10}, Lcom/android/launcher3/ButtonDropTarget;->getMeasuredWidth()I

    move-result v9

    sub-int v9, v5, v9

    div-int/lit8 v11, v6, 0x2

    sub-int/2addr v9, v11

    div-int/lit8 v11, v6, 0x2

    sub-int v11, v5, v11

    .line 256
    invoke-virtual {v10}, Lcom/android/launcher3/ButtonDropTarget;->getMeasuredHeight()I

    move-result v12

    .line 255
    invoke-virtual {v10, v9, v8, v11, v12}, Lcom/android/launcher3/ButtonDropTarget;->layout(IIII)V

    .line 257
    div-int/lit8 v9, v6, 0x2

    add-int/2addr v9, v5

    div-int/lit8 v11, v6, 0x2

    add-int/2addr v11, v5

    .line 258
    invoke-virtual {v7}, Lcom/android/launcher3/ButtonDropTarget;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v11, v12

    .line 259
    invoke-virtual {v7}, Lcom/android/launcher3/ButtonDropTarget;->getMeasuredHeight()I

    move-result v12

    .line 257
    invoke-virtual {v7, v9, v8, v11, v12}, Lcom/android/launcher3/ButtonDropTarget;->layout(IIII)V

    move/from16 v16, v1

    move-object/from16 v17, v2

    goto :goto_1

    .line 261
    :cond_3
    invoke-virtual {v2}, Lcom/android/launcher3/DeviceProfile;->getCellLayoutWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v3

    float-to-int v9, v9

    .line 263
    .local v9, "scaledPanelWidth":I
    invoke-virtual {v10}, Lcom/android/launcher3/ButtonDropTarget;->getMeasuredWidth()I

    move-result v11

    .line 264
    .local v11, "leftButtonWidth":I
    invoke-virtual {v7}, Lcom/android/launcher3/ButtonDropTarget;->getMeasuredWidth()I

    move-result v12

    .line 265
    .local v12, "rightButtonWidth":I
    sub-int v13, v9, v11

    sub-int/2addr v13, v12

    sub-int/2addr v13, v6

    .line 267
    .local v13, "extraSpace":I
    div-int/lit8 v14, v9, 0x2

    sub-int v14, v5, v14

    div-int/lit8 v15, v13, 0x2

    add-int/2addr v14, v15

    .line 268
    .local v14, "leftButtonStart":I
    add-int v15, v14, v11

    .line 269
    .local v15, "leftButtonEnd":I
    add-int v8, v15, v6

    .line 270
    .local v8, "rightButtonStart":I
    add-int v0, v8, v12

    .line 272
    .local v0, "rightButtonEnd":I
    nop

    .line 273
    move/from16 v16, v1

    .end local v1    # "visibleCount":I
    .local v16, "visibleCount":I
    invoke-virtual {v10}, Lcom/android/launcher3/ButtonDropTarget;->getMeasuredHeight()I

    move-result v1

    .line 272
    move-object/from16 v17, v2

    const/4 v2, 0x0

    .end local v2    # "dp":Lcom/android/launcher3/DeviceProfile;
    .local v17, "dp":Lcom/android/launcher3/DeviceProfile;
    invoke-virtual {v10, v14, v2, v15, v1}, Lcom/android/launcher3/ButtonDropTarget;->layout(IIII)V

    .line 274
    nop

    .line 275
    invoke-virtual {v7}, Lcom/android/launcher3/ButtonDropTarget;->getMeasuredHeight()I

    move-result v1

    .line 274
    invoke-virtual {v7, v8, v2, v0, v1}, Lcom/android/launcher3/ButtonDropTarget;->layout(IIII)V

    goto :goto_1

    .line 249
    .end local v0    # "rightButtonEnd":I
    .end local v6    # "buttonGap":I
    .end local v7    # "rightButton":Lcom/android/launcher3/ButtonDropTarget;
    .end local v8    # "rightButtonStart":I
    .end local v9    # "scaledPanelWidth":I
    .end local v10    # "leftButton":Lcom/android/launcher3/ButtonDropTarget;
    .end local v11    # "leftButtonWidth":I
    .end local v12    # "rightButtonWidth":I
    .end local v13    # "extraSpace":I
    .end local v14    # "leftButtonStart":I
    .end local v15    # "leftButtonEnd":I
    .end local v16    # "visibleCount":I
    .end local v17    # "dp":Lcom/android/launcher3/DeviceProfile;
    .restart local v1    # "visibleCount":I
    .restart local v2    # "dp":Lcom/android/launcher3/DeviceProfile;
    :cond_4
    move/from16 v16, v1

    move-object/from16 v17, v2

    .line 278
    .end local v1    # "visibleCount":I
    .end local v2    # "dp":Lcom/android/launcher3/DeviceProfile;
    .restart local v16    # "visibleCount":I
    .restart local v17    # "dp":Lcom/android/launcher3/DeviceProfile;
    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 16
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 145
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 146
    .local v1, "width":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 147
    .local v2, "height":I
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 149
    .local v3, "heightSpec":I
    iget-object v4, v0, Lcom/android/launcher3/DropTargetBar;->mTempTargets:[Lcom/android/launcher3/ButtonDropTarget;

    invoke-direct {v0, v4}, Lcom/android/launcher3/DropTargetBar;->getVisibleButtons([Lcom/android/launcher3/ButtonDropTarget;)I

    move-result v4

    .line 150
    .local v4, "visibleCount":I
    const/high16 v5, -0x80000000

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v4, v7, :cond_0

    .line 151
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 153
    .local v5, "widthSpec":I
    iget-object v8, v0, Lcom/android/launcher3/DropTargetBar;->mTempTargets:[Lcom/android/launcher3/ButtonDropTarget;

    aget-object v6, v8, v6

    .line 154
    .local v6, "firstButton":Lcom/android/launcher3/ButtonDropTarget;
    invoke-virtual {v6, v7}, Lcom/android/launcher3/ButtonDropTarget;->setTextVisible(Z)V

    .line 155
    invoke-virtual {v6, v7}, Lcom/android/launcher3/ButtonDropTarget;->setIconVisible(Z)V

    .line 156
    invoke-virtual {v6, v5, v3}, Lcom/android/launcher3/ButtonDropTarget;->measure(II)V

    .end local v5    # "widthSpec":I
    .end local v6    # "firstButton":Lcom/android/launcher3/ButtonDropTarget;
    goto/16 :goto_1

    .line 157
    :cond_0
    const/4 v8, 0x2

    if-ne v4, v8, :cond_4

    .line 158
    iget-object v9, v0, Lcom/android/launcher3/DropTargetBar;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v9

    .line 159
    .local v9, "dp":Lcom/android/launcher3/DeviceProfile;
    iget v10, v9, Lcom/android/launcher3/DeviceProfile;->dropTargetVerticalPaddingPx:I

    .line 160
    .local v10, "verticalPadding":I
    iget v11, v9, Lcom/android/launcher3/DeviceProfile;->dropTargetHorizontalPaddingPx:I

    .line 162
    .local v11, "horizontalPadding":I
    iget-object v12, v0, Lcom/android/launcher3/DropTargetBar;->mTempTargets:[Lcom/android/launcher3/ButtonDropTarget;

    aget-object v12, v12, v6

    .line 163
    .local v12, "firstButton":Lcom/android/launcher3/ButtonDropTarget;
    invoke-virtual {v12, v7}, Lcom/android/launcher3/ButtonDropTarget;->setTextVisible(Z)V

    .line 164
    invoke-virtual {v12, v7}, Lcom/android/launcher3/ButtonDropTarget;->setIconVisible(Z)V

    .line 165
    invoke-virtual {v12, v6}, Lcom/android/launcher3/ButtonDropTarget;->setTextMultiLine(Z)V

    .line 167
    invoke-virtual {v12, v11, v10, v11, v10}, Lcom/android/launcher3/ButtonDropTarget;->setPadding(IIII)V

    .line 170
    iget-object v13, v0, Lcom/android/launcher3/DropTargetBar;->mTempTargets:[Lcom/android/launcher3/ButtonDropTarget;

    aget-object v13, v13, v7

    .line 171
    .local v13, "secondButton":Lcom/android/launcher3/ButtonDropTarget;
    invoke-virtual {v13, v7}, Lcom/android/launcher3/ButtonDropTarget;->setTextVisible(Z)V

    .line 172
    invoke-virtual {v13, v7}, Lcom/android/launcher3/ButtonDropTarget;->setIconVisible(Z)V

    .line 173
    invoke-virtual {v13, v6}, Lcom/android/launcher3/ButtonDropTarget;->setTextMultiLine(Z)V

    .line 175
    invoke-virtual {v13, v11, v10, v11, v10}, Lcom/android/launcher3/ButtonDropTarget;->setPadding(IIII)V

    .line 178
    invoke-virtual {v9}, Lcom/android/launcher3/DeviceProfile;->getWorkspaceSpringLoadScale()F

    move-result v14

    .line 179
    .local v14, "scale":F
    invoke-virtual {v9}, Lcom/android/launcher3/DeviceProfile;->getCellLayoutWidth()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v15, v14

    float-to-int v15, v15

    .line 182
    .local v15, "scaledPanelWidth":I
    iget-boolean v7, v9, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v7, :cond_1

    .line 185
    iget v7, v9, Lcom/android/launcher3/DeviceProfile;->dropTargetGapPx:I

    div-int/2addr v7, v8

    .line 186
    .local v7, "halfButtonGap":I
    div-int/lit8 v8, v7, 0x2

    sub-int v7, v15, v8

    .line 187
    .local v7, "availableWidth":I
    goto :goto_0

    .line 190
    .end local v7    # "availableWidth":I
    :cond_1
    iget v7, v9, Lcom/android/launcher3/DeviceProfile;->dropTargetGapPx:I

    sub-int v7, v15, v7

    iget v6, v9, Lcom/android/launcher3/DeviceProfile;->dropTargetButtonWorkspaceEdgeGapPx:I

    mul-int/2addr v6, v8

    sub-int/2addr v7, v6

    .line 194
    .restart local v7    # "availableWidth":I
    :goto_0
    invoke-static {v7, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 195
    .local v6, "widthSpec":I
    invoke-virtual {v12, v6, v3}, Lcom/android/launcher3/ButtonDropTarget;->measure(II)V

    .line 196
    iget-boolean v8, v0, Lcom/android/launcher3/DropTargetBar;->mIsVertical:Z

    if-nez v8, :cond_2

    .line 198
    invoke-virtual {v12, v7}, Lcom/android/launcher3/ButtonDropTarget;->isTextTruncated(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 199
    const/4 v8, 0x0

    invoke-virtual {v12, v8}, Lcom/android/launcher3/ButtonDropTarget;->setIconVisible(Z)V

    .line 200
    const/4 v8, 0x1

    invoke-virtual {v12, v8}, Lcom/android/launcher3/ButtonDropTarget;->setTextMultiLine(Z)V

    .line 201
    div-int/lit8 v8, v10, 0x2

    div-int/lit8 v5, v10, 0x2

    invoke-virtual {v12, v11, v8, v11, v5}, Lcom/android/launcher3/ButtonDropTarget;->setPadding(IIII)V

    .line 206
    :cond_2
    iget-boolean v5, v9, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-nez v5, :cond_3

    .line 207
    invoke-virtual {v12}, Lcom/android/launcher3/ButtonDropTarget;->getMeasuredWidth()I

    move-result v5

    iget v8, v9, Lcom/android/launcher3/DeviceProfile;->dropTargetGapPx:I

    add-int/2addr v5, v8

    sub-int/2addr v7, v5

    .line 208
    const/high16 v5, -0x80000000

    invoke-static {v7, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 210
    :cond_3
    invoke-virtual {v13, v6, v3}, Lcom/android/launcher3/ButtonDropTarget;->measure(II)V

    .line 211
    iget-boolean v5, v0, Lcom/android/launcher3/DropTargetBar;->mIsVertical:Z

    if-nez v5, :cond_5

    .line 212
    invoke-virtual {v13, v7}, Lcom/android/launcher3/ButtonDropTarget;->isTextTruncated(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 213
    const/4 v5, 0x0

    invoke-virtual {v13, v5}, Lcom/android/launcher3/ButtonDropTarget;->setIconVisible(Z)V

    .line 214
    const/4 v5, 0x1

    invoke-virtual {v13, v5}, Lcom/android/launcher3/ButtonDropTarget;->setTextMultiLine(Z)V

    .line 215
    div-int/lit8 v5, v10, 0x2

    div-int/lit8 v8, v10, 0x2

    invoke-virtual {v13, v11, v5, v11, v8}, Lcom/android/launcher3/ButtonDropTarget;->setPadding(IIII)V

    goto :goto_2

    .line 157
    .end local v6    # "widthSpec":I
    .end local v7    # "availableWidth":I
    .end local v9    # "dp":Lcom/android/launcher3/DeviceProfile;
    .end local v10    # "verticalPadding":I
    .end local v11    # "horizontalPadding":I
    .end local v12    # "firstButton":Lcom/android/launcher3/ButtonDropTarget;
    .end local v13    # "secondButton":Lcom/android/launcher3/ButtonDropTarget;
    .end local v14    # "scale":F
    .end local v15    # "scaledPanelWidth":I
    :cond_4
    :goto_1
    nop

    .line 220
    :cond_5
    :goto_2
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/DropTargetBar;->setMeasuredDimension(II)V

    .line 221
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 350
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 351
    sget-boolean v0, Lcom/android/launcher3/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v0, :cond_1

    .line 352
    const-string v0, "b/195031154"

    if-nez p2, :cond_0

    .line 353
    const-string v1, "9"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 355
    :cond_0
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "Hiding drop target"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 358
    :cond_1
    :goto_0
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 13
    .param p1, "insets"    # Landroid/graphics/Rect;

    .line 91
    invoke-virtual {p0}, Lcom/android/launcher3/DropTargetBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 92
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/launcher3/DropTargetBar;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    .line 93
    .local v1, "grid":Lcom/android/launcher3/DeviceProfile;
    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/launcher3/DropTargetBar;->mIsVertical:Z

    .line 95
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 96
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 97
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 98
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 99
    const/4 v2, 0x0

    .line 102
    .local v2, "tooltipLocation":I
    iget-boolean v3, v1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v3, :cond_0

    .line 105
    iget v3, v1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v4, v1, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget-object v4, v1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v4, v4, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v5, v1, Lcom/android/launcher3/DeviceProfile;->cellWidthPx:I

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    iget-object v4, v1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v4, v4, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v4, v4, 0x2

    div-int/2addr v3, v4

    iget v4, v1, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    add-int/2addr v3, v4

    .local v3, "horizontalMargin":I
    goto :goto_0

    .line 110
    .end local v3    # "horizontalMargin":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/DropTargetBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/launcher3/R$dimen;->drop_target_bar_margin_horizontal:I

    .line 111
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 113
    .restart local v3    # "horizontalMargin":I
    :goto_0
    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v5, v1, Lcom/android/launcher3/DeviceProfile;->dropTargetBarTopMarginPx:I

    add-int/2addr v4, v5

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 114
    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v5, v1, Lcom/android/launcher3/DeviceProfile;->dropTargetBarBottomMarginPx:I

    add-int/2addr v4, v5

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 115
    iget v4, v1, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    mul-int/lit8 v5, v3, 0x2

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 116
    iget-boolean v4, p0, Lcom/android/launcher3/DropTargetBar;->mIsVertical:Z

    if-eqz v4, :cond_1

    .line 117
    iget v4, v1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v5, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 118
    iget v4, v1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v5, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 120
    :cond_1
    iget v4, v1, Lcom/android/launcher3/DeviceProfile;->dropTargetBarSizePx:I

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 121
    const/16 v4, 0x31

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 123
    iget-object v4, p0, Lcom/android/launcher3/DropTargetBar;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v4

    .line 124
    .local v4, "dp":Lcom/android/launcher3/DeviceProfile;
    iget v5, v4, Lcom/android/launcher3/DeviceProfile;->dropTargetHorizontalPaddingPx:I

    .line 125
    .local v5, "horizontalPadding":I
    iget v6, v4, Lcom/android/launcher3/DeviceProfile;->dropTargetVerticalPaddingPx:I

    .line 126
    .local v6, "verticalPadding":I
    invoke-virtual {p0, v0}, Lcom/android/launcher3/DropTargetBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    iget-object v7, p0, Lcom/android/launcher3/DropTargetBar;->mDropTargets:[Lcom/android/launcher3/ButtonDropTarget;

    array-length v8, v7

    const/4 v9, 0x0

    move v10, v9

    :goto_1
    if-ge v10, v8, :cond_2

    aget-object v11, v7, v10

    .line 128
    .local v11, "button":Lcom/android/launcher3/ButtonDropTarget;
    iget v12, v1, Lcom/android/launcher3/DeviceProfile;->dropTargetTextSizePx:I

    int-to-float v12, v12

    invoke-virtual {v11, v9, v12}, Lcom/android/launcher3/ButtonDropTarget;->setTextSize(IF)V

    .line 129
    invoke-virtual {v11, v2}, Lcom/android/launcher3/ButtonDropTarget;->setToolTipLocation(I)V

    .line 130
    invoke-virtual {v11, v5, v6, v5, v6}, Lcom/android/launcher3/ButtonDropTarget;->setPadding(IIII)V

    .line 127
    .end local v11    # "button":Lcom/android/launcher3/ButtonDropTarget;
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 133
    :cond_2
    return-void
.end method

.method public setup(Lcom/android/launcher3/dragndrop/DragController;)V
    .locals 3
    .param p1, "dragController"    # Lcom/android/launcher3/dragndrop/DragController;

    .line 136
    invoke-virtual {p1, p0}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 137
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/DropTargetBar;->mDropTargets:[Lcom/android/launcher3/ButtonDropTarget;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 138
    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 139
    iget-object v1, p0, Lcom/android/launcher3/DropTargetBar;->mDropTargets:[Lcom/android/launcher3/ButtonDropTarget;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/android/launcher3/dragndrop/DragController;->addDropTarget(Lcom/android/launcher3/DropTarget;)V

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
