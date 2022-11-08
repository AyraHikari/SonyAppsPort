.class public abstract Lcom/android/quickstep/BaseActivityInterface;
.super Ljava/lang/Object;
.source "BaseActivityInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;,
        Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<STATE_TYPE::",
        "Lcom/android/launcher3/statemanager/BaseState<",
        "TSTATE_TYPE;>;ACTIVITY_TYPE:",
        "Lcom/android/launcher3/statemanager/StatefulActivity<",
        "TSTATE_TYPE;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mBackgroundState:Lcom/android/launcher3/statemanager/BaseState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TSTATE_TYPE;"
        }
    .end annotation
.end field

.field private mOnInitBackgroundStateUICallback:Ljava/lang/Runnable;

.field private mTargetState:Lcom/android/launcher3/statemanager/BaseState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TSTATE_TYPE;"
        }
    .end annotation
.end field

.field public final rotationSupportedByActivity:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmBackgroundState(Lcom/android/quickstep/BaseActivityInterface;)Lcom/android/launcher3/statemanager/BaseState;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/BaseActivityInterface;->mBackgroundState:Lcom/android/launcher3/statemanager/BaseState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTargetState(Lcom/android/quickstep/BaseActivityInterface;)Lcom/android/launcher3/statemanager/BaseState;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/BaseActivityInterface;->mTargetState:Lcom/android/launcher3/statemanager/BaseState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmTargetState(Lcom/android/quickstep/BaseActivityInterface;Lcom/android/launcher3/statemanager/BaseState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/BaseActivityInterface;->mTargetState:Lcom/android/launcher3/statemanager/BaseState;

    return-void
.end method

.method static bridge synthetic -$$Nest$monInitBackgroundStateUI(Lcom/android/quickstep/BaseActivityInterface;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/BaseActivityInterface;->onInitBackgroundStateUI()V

    return-void
.end method

.method protected constructor <init>(ZLcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/statemanager/BaseState;)V
    .locals 1
    .param p1, "rotationSupportedByActivity"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTSTATE_TYPE;TSTATE_TYPE;)V"
        }
    .end annotation

    .line 90
    .local p0, "this":Lcom/android/quickstep/BaseActivityInterface;, "Lcom/android/quickstep/BaseActivityInterface<TSTATE_TYPE;TACTIVITY_TYPE;>;"
    .local p2, "overviewState":Lcom/android/launcher3/statemanager/BaseState;, "TSTATE_TYPE;"
    .local p3, "backgroundState":Lcom/android/launcher3/statemanager/BaseState;, "TSTATE_TYPE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/BaseActivityInterface;->mOnInitBackgroundStateUICallback:Ljava/lang/Runnable;

    .line 91
    iput-boolean p1, p0, Lcom/android/quickstep/BaseActivityInterface;->rotationSupportedByActivity:Z

    .line 92
    iput-object p2, p0, Lcom/android/quickstep/BaseActivityInterface;->mTargetState:Lcom/android/launcher3/statemanager/BaseState;

    .line 93
    iput-object p3, p0, Lcom/android/quickstep/BaseActivityInterface;->mBackgroundState:Lcom/android/launcher3/statemanager/BaseState;

    .line 94
    return-void
.end method

.method private calculateTaskSizeInternal(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;IIIFILandroid/graphics/Rect;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dp"    # Lcom/android/launcher3/DeviceProfile;
    .param p3, "claimedSpaceAbove"    # I
    .param p4, "claimedSpaceBelow"    # I
    .param p5, "minimumHorizontalPadding"    # I
    .param p6, "maxScale"    # F
    .param p7, "gravity"    # I
    .param p8, "outRect"    # Landroid/graphics/Rect;

    .line 246
    .local p0, "this":Lcom/android/quickstep/BaseActivityInterface;, "Lcom/android/quickstep/BaseActivityInterface<TSTATE_TYPE;TACTIVITY_TYPE;>;"
    move-object v7, p2

    invoke-virtual {p2}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v8

    .line 248
    .local v8, "insets":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    iget v1, v7, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v2, v7, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v9, v0

    .line 249
    .local v9, "potentialTaskRect":Landroid/graphics/Rect;
    iget v0, v8, Landroid/graphics/Rect;->left:I

    iget v1, v8, Landroid/graphics/Rect;->top:I

    iget v2, v8, Landroid/graphics/Rect;->right:I

    iget v3, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/Rect;->inset(IIII)V

    .line 250
    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    invoke-virtual {v9, v12, v10, v12, v11}, Landroid/graphics/Rect;->inset(IIII)V

    .line 256
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v9

    move/from16 v4, p6

    move/from16 v5, p7

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/BaseActivityInterface;->calculateTaskSizeInternal(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;FILandroid/graphics/Rect;)V

    .line 257
    return-void
.end method

.method private calculateTaskSizeInternal(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;FILandroid/graphics/Rect;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dp"    # Lcom/android/launcher3/DeviceProfile;
    .param p3, "potentialTaskRect"    # Landroid/graphics/Rect;
    .param p4, "maxScale"    # F
    .param p5, "gravity"    # I
    .param p6, "outRect"    # Landroid/graphics/Rect;

    .line 261
    .local p0, "this":Lcom/android/quickstep/BaseActivityInterface;, "Lcom/android/quickstep/BaseActivityInterface<TSTATE_TYPE;TACTIVITY_TYPE;>;"
    invoke-static {p1, p2}, Lcom/android/quickstep/BaseActivityInterface;->getTaskDimension(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;)Landroid/graphics/PointF;

    move-result-object v0

    .line 263
    .local v0, "taskDimension":Landroid/graphics/PointF;
    nop

    .line 264
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr v1, v2

    .line 265
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v2, v3

    .line 263
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 266
    .local v1, "scale":F
    invoke-static {v1, p4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 267
    iget v2, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 268
    .local v2, "outWidth":I
    iget v3, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 270
    .local v3, "outHeight":I
    invoke-static {p5, v2, v3, p3, p6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 271
    return-void
.end method

.method private static getTaskDimension(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;)Landroid/graphics/PointF;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dp"    # Lcom/android/launcher3/DeviceProfile;

    .line 274
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 275
    .local v0, "dimension":Landroid/graphics/PointF;
    invoke-static {p0, p1, v0}, Lcom/android/quickstep/BaseActivityInterface;->getTaskDimension(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/PointF;)V

    .line 276
    return-object v0
.end method

.method public static getTaskDimension(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/PointF;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dp"    # Lcom/android/launcher3/DeviceProfile;
    .param p2, "out"    # Landroid/graphics/PointF;

    .line 283
    iget-boolean v0, p1, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v0, :cond_4

    .line 284
    sget-object v0, Lcom/android/quickstep/util/SplitScreenBounds;->INSTANCE:Lcom/android/quickstep/util/SplitScreenBounds;

    invoke-virtual {v0, p0}, Lcom/android/quickstep/util/SplitScreenBounds;->getSecondaryWindowBounds(Landroid/content/Context;)Lcom/android/launcher3/util/WindowBounds;

    move-result-object v0

    .line 285
    .local v0, "bounds":Lcom/android/launcher3/util/WindowBounds;
    iget-object v1, v0, Lcom/android/launcher3/util/WindowBounds;->availableSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iput v1, p2, Landroid/graphics/PointF;->x:F

    .line 286
    iget-object v1, v0, Lcom/android/launcher3/util/WindowBounds;->availableSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iput v1, p2, Landroid/graphics/PointF;->y:F

    .line 287
    invoke-static {p1}, Lcom/android/quickstep/views/TaskView;->clipLeft(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 288
    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget-object v2, v0, Lcom/android/launcher3/util/WindowBounds;->insets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p2, Landroid/graphics/PointF;->x:F

    .line 290
    :cond_0
    invoke-static {p1}, Lcom/android/quickstep/views/TaskView;->clipRight(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 291
    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget-object v2, v0, Lcom/android/launcher3/util/WindowBounds;->insets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p2, Landroid/graphics/PointF;->x:F

    .line 293
    :cond_1
    invoke-static {p1}, Lcom/android/quickstep/views/TaskView;->clipTop(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 294
    iget v1, p2, Landroid/graphics/PointF;->y:F

    iget-object v2, v0, Lcom/android/launcher3/util/WindowBounds;->insets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p2, Landroid/graphics/PointF;->y:F

    .line 296
    :cond_2
    invoke-static {p1}, Lcom/android/quickstep/views/TaskView;->clipBottom(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 297
    iget v1, p2, Landroid/graphics/PointF;->y:F

    iget-object v2, v0, Lcom/android/launcher3/util/WindowBounds;->insets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p2, Landroid/graphics/PointF;->y:F

    .line 299
    .end local v0    # "bounds":Lcom/android/launcher3/util/WindowBounds;
    :cond_3
    goto :goto_0

    .line 300
    :cond_4
    iget v0, p1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/PointF;->x:F

    .line 301
    iget v0, p1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/PointF;->y:F

    .line 302
    invoke-static {p1}, Lcom/android/quickstep/views/TaskView;->clipLeft(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 303
    iget v0, p2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/PointF;->x:F

    .line 305
    :cond_5
    invoke-static {p1}, Lcom/android/quickstep/views/TaskView;->clipRight(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 306
    iget v0, p2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/PointF;->x:F

    .line 308
    :cond_6
    invoke-static {p1}, Lcom/android/quickstep/views/TaskView;->clipTop(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 309
    iget v0, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/PointF;->y:F

    .line 311
    :cond_7
    invoke-static {p1}, Lcom/android/quickstep/views/TaskView;->clipBottom(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 312
    iget v0, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Lcom/android/launcher3/DeviceProfile;->taskbarSize:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/PointF;->y:F

    .line 315
    :cond_8
    :goto_0
    return-void
.end method

.method private onInitBackgroundStateUI()V
    .locals 1

    .line 426
    .local p0, "this":Lcom/android/quickstep/BaseActivityInterface;, "Lcom/android/quickstep/BaseActivityInterface<TSTATE_TYPE;TACTIVITY_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/BaseActivityInterface;->mOnInitBackgroundStateUICallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 427
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 428
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/BaseActivityInterface;->mOnInitBackgroundStateUICallback:Ljava/lang/Runnable;

    .line 430
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract allowMinimizeSplitScreen()Z
.end method

.method public final calculateGridSize(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "dp"    # Lcom/android/launcher3/DeviceProfile;
    .param p2, "outRect"    # Landroid/graphics/Rect;

    .line 321
    .local p0, "this":Lcom/android/quickstep/BaseActivityInterface;, "Lcom/android/quickstep/BaseActivityInterface<TSTATE_TYPE;TACTIVITY_TYPE;>;"
    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v0

    .line 322
    .local v0, "insets":Landroid/graphics/Rect;
    iget v1, p1, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    .line 323
    .local v1, "topMargin":I
    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->getOverviewActionsClaimedSpace()I

    move-result v2

    .line 324
    .local v2, "bottomMargin":I
    iget v3, p1, Lcom/android/launcher3/DeviceProfile;->overviewGridSideMargin:I

    .line 326
    .local v3, "sideMargin":I
    iget v4, p1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v5, p1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    const/4 v6, 0x0

    invoke-virtual {p2, v6, v6, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 327
    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->right:I

    .line 328
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 327
    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->inset(IIII)V

    .line 329
    return-void
.end method

.method public final calculateGridTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;Lcom/android/launcher3/touch/PagedOrientationHandler;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dp"    # Lcom/android/launcher3/DeviceProfile;
    .param p3, "outRect"    # Landroid/graphics/Rect;
    .param p4, "orientedState"    # Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 336
    .local p0, "this":Lcom/android/quickstep/BaseActivityInterface;, "Lcom/android/quickstep/BaseActivityInterface<TSTATE_TYPE;TACTIVITY_TYPE;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 337
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 338
    .local v1, "taskRect":Landroid/graphics/Rect;
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/quickstep/BaseActivityInterface;->calculateTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V

    .line 340
    nop

    .line 341
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p2, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    add-int/2addr v2, v3

    iget v3, p2, Lcom/android/launcher3/DeviceProfile;->overviewRowSpacing:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 344
    .local v2, "rowHeight":F
    invoke-static {p1, p2}, Lcom/android/quickstep/BaseActivityInterface;->getTaskDimension(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;)Landroid/graphics/PointF;

    move-result-object v3

    .line 345
    .local v3, "taskDimension":Landroid/graphics/PointF;
    iget v4, p2, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    int-to-float v4, v4

    sub-float v4, v2, v4

    iget v5, v3, Landroid/graphics/PointF;->y:F

    div-float/2addr v4, v5

    .line 346
    .local v4, "scale":F
    iget v5, v3, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 347
    .local v5, "outWidth":I
    iget v6, v3, Landroid/graphics/PointF;->y:F

    mul-float/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 349
    .local v6, "outHeight":I
    const/16 v7, 0x30

    .line 350
    .local v7, "gravity":I
    invoke-interface {p4, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getRecentsRtlSetting(Landroid/content/res/Resources;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x5

    goto :goto_0

    :cond_0
    const/4 v8, 0x3

    :goto_0
    or-int/2addr v7, v8

    .line 351
    invoke-static {v7, v5, v6, v1, p3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 352
    return-void
.end method

.method public final calculateModalTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dp"    # Lcom/android/launcher3/DeviceProfile;
    .param p3, "outRect"    # Landroid/graphics/Rect;

    .line 358
    .local p0, "this":Lcom/android/quickstep/BaseActivityInterface;, "Lcom/android/quickstep/BaseActivityInterface<TSTATE_TYPE;TACTIVITY_TYPE;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/quickstep/BaseActivityInterface;->calculateTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V

    .line 359
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->overview_modal_max_scale:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    .line 360
    .local v0, "maxScale":F
    iget v4, p2, Lcom/android/launcher3/DeviceProfile;->overviewTaskMarginPx:I

    iget v1, p2, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    .line 363
    invoke-virtual {p2}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v1, v2

    iget v1, p2, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    int-to-float v1, v1

    .line 364
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 360
    const/high16 v7, 0x3f800000    # 1.0f

    const/16 v8, 0x51

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v9, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/quickstep/BaseActivityInterface;->calculateTaskSizeInternal(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;IIIFILandroid/graphics/Rect;)V

    .line 368
    return-void
.end method

.method public final calculateTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dp"    # Lcom/android/launcher3/DeviceProfile;
    .param p3, "outRect"    # Landroid/graphics/Rect;

    .line 224
    .local p0, "this":Lcom/android/quickstep/BaseActivityInterface;, "Lcom/android/quickstep/BaseActivityInterface<TSTATE_TYPE;TACTIVITY_TYPE;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 225
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/android/launcher3/R$dimen;->overview_max_scale:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    .line 226
    .local v1, "maxScale":F
    iget-boolean v2, p2, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v2, :cond_0

    .line 227
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    move-object v9, v2

    .line 228
    .local v9, "gridRect":Landroid/graphics/Rect;
    invoke-virtual {p0, p2, v9}, Lcom/android/quickstep/BaseActivityInterface;->calculateGridSize(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V

    .line 230
    const/16 v7, 0x11

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v9

    move v6, v1

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/quickstep/BaseActivityInterface;->calculateTaskSizeInternal(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;FILandroid/graphics/Rect;)V

    .line 231
    .end local v9    # "gridRect":Landroid/graphics/Rect;
    goto :goto_0

    .line 232
    :cond_0
    iget v11, p2, Lcom/android/launcher3/DeviceProfile;->overviewTaskMarginPx:I

    .line 233
    .local v11, "taskMargin":I
    iget v5, p2, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    .line 235
    invoke-virtual {p2}, Lcom/android/launcher3/DeviceProfile;->getOverviewActionsClaimedSpace()I

    move-result v6

    sget v2, Lcom/android/launcher3/R$dimen;->overview_minimum_next_prev_size:I

    .line 236
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int v7, v2, v11

    const/16 v9, 0x11

    .line 233
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v8, v1

    move-object v10, p3

    invoke-direct/range {v2 .. v10}, Lcom/android/quickstep/BaseActivityInterface;->calculateTaskSizeInternal(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;IIIFILandroid/graphics/Rect;)V

    .line 241
    .end local v11    # "taskMargin":I
    :goto_0
    return-void
.end method

.method public closeOverlay()V
    .locals 2

    .line 201
    .local p0, "this":Lcom/android/quickstep/BaseActivityInterface;, "Lcom/android/quickstep/BaseActivityInterface<TSTATE_TYPE;TACTIVITY_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/BaseActivityInterface;->getTaskbarController()Lcom/android/launcher3/taskbar/TaskbarUIController;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/BaseActivityInterface$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/quickstep/BaseActivityInterface$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 202
    return-void
.end method

.method public abstract createActivityInitListener(Ljava/util/function/Predicate;)Lcom/android/quickstep/util/ActivityInitListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/android/quickstep/util/ActivityInitListener;"
        }
    .end annotation
.end method

.method public deferStartingActivity(Lcom/android/quickstep/RecentsAnimationDeviceState;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "deviceState"    # Lcom/android/quickstep/RecentsAnimationDeviceState;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .line 172
    .local p0, "this":Lcom/android/quickstep/BaseActivityInterface;, "Lcom/android/quickstep/BaseActivityInterface<TSTATE_TYPE;TACTIVITY_TYPE;>;"
    invoke-virtual {p1, p2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isInDeferredGestureRegion(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isImeRenderingNavButtons()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public abstract getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TACTIVITY_TYPE;"
        }
    .end annotation
.end method

.method public getDepthController()Lcom/android/launcher3/statehandlers/DepthController;
    .locals 1

    .line 143
    .local p0, "this":Lcom/android/quickstep/BaseActivityInterface;, "Lcom/android/quickstep/BaseActivityInterface<TSTATE_TYPE;TACTIVITY_TYPE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getOverviewScrimColorForState(Lcom/android/launcher3/statemanager/StatefulActivity;Lcom/android/launcher3/statemanager/BaseState;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TACTIVITY_TYPE;TSTATE_TYPE;)I"
        }
    .end annotation
.end method

.method public abstract getOverviewWindowBounds(Landroid/graphics/Rect;Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/graphics/Rect;
.end method

.method public getParallelAnimationToLauncher(Lcom/android/quickstep/GestureState$GestureEndTarget;JLcom/android/quickstep/RecentsAnimationCallbacks;)Landroid/animation/Animator;
    .locals 7
    .param p1, "endTarget"    # Lcom/android/quickstep/GestureState$GestureEndTarget;
    .param p2, "duration"    # J
    .param p4, "callbacks"    # Lcom/android/quickstep/RecentsAnimationCallbacks;

    .line 377
    .local p0, "this":Lcom/android/quickstep/BaseActivityInterface;, "Lcom/android/quickstep/BaseActivityInterface<TSTATE_TYPE;TACTIVITY_TYPE;>;"
    sget-object v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 378
    invoke-virtual {p0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    .line 379
    .local v0, "activity":Lcom/android/launcher3/statemanager/StatefulActivity;, "TACTIVITY_TYPE;"
    if-nez v0, :cond_0

    .line 380
    return-object v1

    .line 382
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/quickstep/BaseActivityInterface;->stateFromGestureEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    .line 383
    .local v1, "state":Lcom/android/launcher3/statemanager/BaseState;, "TSTATE_TYPE;"
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getScrimView()Lcom/android/launcher3/views/ScrimView;

    move-result-object v2

    .line 384
    .local v2, "scrimView":Lcom/android/launcher3/views/ScrimView;
    sget-object v3, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_BACKGROUND_COLOR:Landroid/util/IntProperty;

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    .line 385
    invoke-virtual {p0, v0, v1}, Lcom/android/quickstep/BaseActivityInterface;->getOverviewScrimColorForState(Lcom/android/launcher3/statemanager/StatefulActivity;Lcom/android/launcher3/statemanager/BaseState;)I

    move-result v6

    aput v6, v4, v5

    .line 384
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 386
    .local v3, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v3, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 387
    return-object v3

    .line 389
    .end local v0    # "activity":Lcom/android/launcher3/statemanager/StatefulActivity;, "TACTIVITY_TYPE;"
    .end local v1    # "state":Lcom/android/launcher3/statemanager/BaseState;, "TSTATE_TYPE;"
    .end local v2    # "scrimView":Lcom/android/launcher3/views/ScrimView;
    .end local v3    # "anim":Landroid/animation/ObjectAnimator;
    :cond_1
    return-object v1
.end method

.method public abstract getSwipeUpDestinationAndLength(Lcom/android/launcher3/DeviceProfile;Landroid/content/Context;Landroid/graphics/Rect;Lcom/android/launcher3/touch/PagedOrientationHandler;)I
.end method

.method public abstract getTaskbarController()Lcom/android/launcher3/taskbar/TaskbarUIController;
.end method

.method public abstract getVisibleRecentsView()Lcom/android/quickstep/views/RecentsView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/quickstep/views/RecentsView;",
            ">()TT;"
        }
    .end annotation
.end method

.method public abstract isInLiveTileMode()Z
.end method

.method public final isResumed()Z
    .locals 2

    .line 150
    .local p0, "this":Lcom/android/quickstep/BaseActivityInterface;, "Lcom/android/quickstep/BaseActivityInterface<TSTATE_TYPE;TACTIVITY_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    .line 151
    .local v0, "activity":Lcom/android/launcher3/statemanager/StatefulActivity;, "TACTIVITY_TYPE;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->hasBeenResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isStarted()Z
    .locals 2

    .line 155
    .local p0, "this":Lcom/android/quickstep/BaseActivityInterface;, "Lcom/android/quickstep/BaseActivityInterface<TSTATE_TYPE;TACTIVITY_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    .line 156
    .local v0, "activity":Lcom/android/launcher3/statemanager/StatefulActivity;, "TACTIVITY_TYPE;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public abstract onAssistantVisibilityChanged(F)V
.end method

.method public abstract onExitOverview(Lcom/android/quickstep/RotationTouchHelper;Ljava/lang/Runnable;)V
.end method

.method public abstract onLaunchTaskFailed()V
.end method

.method public onLaunchTaskSuccess()V
    .locals 2

    .line 190
    .local p0, "this":Lcom/android/quickstep/BaseActivityInterface;, "Lcom/android/quickstep/BaseActivityInterface<TSTATE_TYPE;TACTIVITY_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    .line 191
    .local v0, "activity":Lcom/android/launcher3/statemanager/StatefulActivity;, "TACTIVITY_TYPE;"
    if-nez v0, :cond_0

    .line 192
    return-void

    .line 194
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->moveToRestState()V

    .line 195
    return-void
.end method

.method public abstract onOneHandedModeStateChanged(Z)V
.end method

.method public onSettledOnEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)Landroid/view/View;
    .locals 2
    .param p1, "endTarget"    # Lcom/android/quickstep/GestureState$GestureEndTarget;

    .line 409
    .local p0, "this":Lcom/android/quickstep/BaseActivityInterface;, "Lcom/android/quickstep/BaseActivityInterface<TSTATE_TYPE;TACTIVITY_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/BaseActivityInterface;->getTaskbarController()Lcom/android/launcher3/taskbar/TaskbarUIController;

    move-result-object v0

    .line 410
    .local v0, "taskbarUIController":Lcom/android/launcher3/taskbar/TaskbarUIController;
    if-eqz v0, :cond_0

    .line 411
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarUIController;->setSystemGestureInProgress(Z)V

    .line 412
    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarUIController;->getRootView()Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 414
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public onSwipeUpToHomeComplete(Lcom/android/quickstep/RecentsAnimationDeviceState;)V
    .locals 0
    .param p1, "deviceState"    # Lcom/android/quickstep/RecentsAnimationDeviceState;

    .line 120
    .local p0, "this":Lcom/android/quickstep/BaseActivityInterface;, "Lcom/android/quickstep/BaseActivityInterface<TSTATE_TYPE;TACTIVITY_TYPE;>;"
    return-void
.end method

.method public onTransitionCancelled(ZLcom/android/quickstep/GestureState$GestureEndTarget;)V
    .locals 3
    .param p1, "activityVisible"    # Z
    .param p2, "endTarget"    # Lcom/android/quickstep/GestureState$GestureEndTarget;

    .line 103
    .local p0, "this":Lcom/android/quickstep/BaseActivityInterface;, "Lcom/android/quickstep/BaseActivityInterface<TSTATE_TYPE;TACTIVITY_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    .line 104
    .local v0, "activity":Lcom/android/launcher3/statemanager/StatefulActivity;, "TACTIVITY_TYPE;"
    if-nez v0, :cond_0

    .line 105
    return-void

    .line 107
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getRestState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    .line 108
    .local v1, "startState":Lcom/android/launcher3/statemanager/BaseState;, "TSTATE_TYPE;"
    if-eqz p2, :cond_1

    .line 110
    invoke-virtual {p0, p2}, Lcom/android/quickstep/BaseActivityInterface;->stateFromGestureEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    .line 112
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    .line 113
    return-void
.end method

.method public abstract prepareRecentsUI(Lcom/android/quickstep/RecentsAnimationDeviceState;ZLjava/util/function/Consumer;)Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/RecentsAnimationDeviceState;",
            "Z",
            "Ljava/util/function/Consumer<",
            "Lcom/android/quickstep/util/AnimatorControllerWithResistance;",
            ">;)",
            "Lcom/android/quickstep/BaseActivityInterface$AnimationFactory;"
        }
    .end annotation
.end method

.method protected runOnInitBackgroundStateUI(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 418
    .local p0, "this":Lcom/android/quickstep/BaseActivityInterface;, "Lcom/android/quickstep/BaseActivityInterface<TSTATE_TYPE;TACTIVITY_TYPE;>;"
    iput-object p1, p0, Lcom/android/quickstep/BaseActivityInterface;->mOnInitBackgroundStateUICallback:Ljava/lang/Runnable;

    .line 419
    invoke-virtual {p0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    .line 420
    .local v0, "activity":Lcom/android/launcher3/statemanager/StatefulActivity;, "TACTIVITY_TYPE;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/BaseActivityInterface;->mBackgroundState:Lcom/android/launcher3/statemanager/BaseState;

    if-ne v1, v2, :cond_0

    .line 421
    invoke-direct {p0}, Lcom/android/quickstep/BaseActivityInterface;->onInitBackgroundStateUI()V

    .line 423
    :cond_0
    return-void
.end method

.method public setOnDeferredActivityLaunchCallback(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 136
    .local p0, "this":Lcom/android/quickstep/BaseActivityInterface;, "Lcom/android/quickstep/BaseActivityInterface<TSTATE_TYPE;TACTIVITY_TYPE;>;"
    return-void
.end method

.method public shouldCancelCurrentGesture()Z
    .locals 1

    .line 179
    .local p0, "this":Lcom/android/quickstep/BaseActivityInterface;, "Lcom/android/quickstep/BaseActivityInterface<TSTATE_TYPE;TACTIVITY_TYPE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public abstract stateFromGestureEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)Lcom/android/launcher3/statemanager/BaseState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/GestureState$GestureEndTarget;",
            ")TSTATE_TYPE;"
        }
    .end annotation
.end method

.method public switchRunningTaskViewToScreenshot(Ljava/util/HashMap;Ljava/lang/Runnable;)V
    .locals 2
    .param p2, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 206
    .local p0, "this":Lcom/android/quickstep/BaseActivityInterface;, "Lcom/android/quickstep/BaseActivityInterface<TSTATE_TYPE;TACTIVITY_TYPE;>;"
    .local p1, "thumbnailDatas":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/systemui/shared/recents/model/ThumbnailData;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    .line 207
    .local v0, "activity":Lcom/android/launcher3/statemanager/StatefulActivity;, "TACTIVITY_TYPE;"
    if-nez v0, :cond_0

    .line 208
    return-void

    .line 210
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/views/RecentsView;

    .line 211
    .local v1, "recentsView":Lcom/android/quickstep/views/RecentsView;
    if-nez v1, :cond_2

    .line 212
    if-eqz p2, :cond_1

    .line 213
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 215
    :cond_1
    return-void

    .line 217
    :cond_2
    invoke-virtual {v1, p1, p2}, Lcom/android/quickstep/views/RecentsView;->switchToScreenshot(Ljava/util/HashMap;Ljava/lang/Runnable;)V

    .line 218
    return-void
.end method

.method public abstract switchToRecentsIfVisible(Ljava/lang/Runnable;)Z
.end method
