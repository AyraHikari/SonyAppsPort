.class public Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;
.super Ljava/lang/Object;
.source "FlingToDeleteHelper.java"


# static fields
.field private static final MAX_FLING_DEGREES:F = 35.0f


# instance fields
.field private mDropTarget:Lcom/android/launcher3/ButtonDropTarget;

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 0
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 45
    return-void
.end method

.method private getAngleBetweenVectors(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 3
    .param p1, "vec1"    # Landroid/graphics/PointF;
    .param p2, "vec2"    # Landroid/graphics/PointF;

    .line 110
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 111
    invoke-virtual {p1}, Landroid/graphics/PointF;->length()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/PointF;->length()F

    move-result v2

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 110
    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private isFlingingToDelete()Landroid/graphics/PointF;
    .locals 9

    .line 83
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    if-nez v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    sget v2, Lcom/android/launcher3/R$id;->delete_target_text:I

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ButtonDropTarget;

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/launcher3/ButtonDropTarget;->isDropEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_1

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 89
    .local v0, "config":Landroid/view/ViewConfiguration;
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 90
    new-instance v2, Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 91
    .local v2, "vel":Landroid/graphics/PointF;
    const/high16 v3, 0x42100000    # 36.0f

    .line 92
    .local v3, "theta":F
    iget-object v4, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v4

    .line 93
    .local v4, "deviceProfile":Lcom/android/launcher3/DeviceProfile;
    iget-object v5, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    iget v6, v4, Lcom/android/launcher3/DeviceProfile;->flingToDeleteThresholdVelocity:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x0

    if-gez v5, :cond_3

    .line 95
    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v7, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 96
    .local v5, "upVec":Landroid/graphics/PointF;
    invoke-direct {p0, v2, v5}, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->getAngleBetweenVectors(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v3

    .line 97
    .end local v5    # "upVec":Landroid/graphics/PointF;
    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 98
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    iget v8, v4, Lcom/android/launcher3/DeviceProfile;->flingToDeleteThresholdVelocity:I

    int-to-float v8, v8

    cmpg-float v5, v5, v8

    if-gez v5, :cond_4

    .line 100
    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 101
    .local v5, "leftVec":Landroid/graphics/PointF;
    invoke-direct {p0, v2, v5}, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->getAngleBetweenVectors(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v3

    .line 103
    .end local v5    # "leftVec":Landroid/graphics/PointF;
    :cond_4
    :goto_0
    float-to-double v5, v3

    const-wide v7, 0x4041800000000000L    # 35.0

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    cmpg-double v5, v5, v7

    if-gtz v5, :cond_5

    .line 104
    return-object v2

    .line 106
    :cond_5
    return-object v1

    .line 87
    .end local v0    # "config":Landroid/view/ViewConfiguration;
    .end local v2    # "vel":Landroid/graphics/PointF;
    .end local v3    # "theta":F
    .end local v4    # "deviceProfile":Lcom/android/launcher3/DeviceProfile;
    :cond_6
    :goto_1
    return-object v1
.end method


# virtual methods
.method public getDropTarget()Lcom/android/launcher3/DropTarget;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    return-object v0
.end method

.method public getFlingAnimation(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)Ljava/lang/Runnable;
    .locals 8
    .param p1, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p2, "options"    # Lcom/android/launcher3/dragndrop/DragOptions;

    .line 66
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 67
    return-object v0

    .line 69
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->isFlingingToDelete()Landroid/graphics/PointF;

    move-result-object v7

    .line 70
    .local v7, "vel":Landroid/graphics/PointF;
    if-eqz v7, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p2, Lcom/android/launcher3/dragndrop/DragOptions;->isFlingToDelete:Z

    .line 71
    iget-boolean v1, p2, Lcom/android/launcher3/dragndrop/DragOptions;->isFlingToDelete:Z

    if-nez v1, :cond_2

    .line 72
    return-object v0

    .line 74
    :cond_2
    new-instance v0, Lcom/android/launcher3/util/FlingAnimation;

    iget-object v4, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mDropTarget:Lcom/android/launcher3/ButtonDropTarget;

    iget-object v5, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object v1, v0

    move-object v2, p1

    move-object v3, v7

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/util/FlingAnimation;-><init>(Lcom/android/launcher3/DropTarget$DragObject;Landroid/graphics/PointF;Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/dragndrop/DragOptions;)V

    return-object v0
.end method

.method public recordMotionEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 48
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 49
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 52
    return-void
.end method

.method public releaseVelocityTracker()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 59
    :cond_0
    return-void
.end method
