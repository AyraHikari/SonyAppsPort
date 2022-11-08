.class public Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;
.super Ljava/lang/Object;
.source "TaskView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/views/TaskView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FullscreenDrawParams"
.end annotation


# instance fields
.field private final mCornerRadius:F

.field public mCurrentDrawnCornerRadius:F

.field public mCurrentDrawnInsets:Landroid/graphics/RectF;

.field public mScale:F

.field private final mWindowCornerRadius:F


# direct methods
.method static bridge synthetic -$$Nest$fgetmCornerRadius(Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mCornerRadius:F

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 1666
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1661
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mCurrentDrawnInsets:Landroid/graphics/RectF;

    .line 1664
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mScale:F

    .line 1667
    invoke-static {p1}, Lcom/android/quickstep/util/TaskCornerRadius;->get(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mCornerRadius:F

    .line 1668
    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v1

    iput v1, p0, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mWindowCornerRadius:F

    .line 1670
    iput v0, p0, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mCurrentDrawnCornerRadius:F

    .line 1671
    return-void
.end method


# virtual methods
.method public setProgress(FFFILcom/android/launcher3/DeviceProfile;Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;)V
    .locals 8
    .param p1, "fullscreenProgress"    # F
    .param p2, "parentScale"    # F
    .param p3, "taskViewScale"    # F
    .param p4, "previewWidth"    # I
    .param p5, "dp"    # Lcom/android/launcher3/DeviceProfile;
    .param p6, "pph"    # Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    .line 1678
    invoke-virtual {p6, p5}, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->getInsetsToDrawInFullscreen(Lcom/android/launcher3/DeviceProfile;)Landroid/graphics/RectF;

    move-result-object v0

    .line 1680
    .local v0, "insets":Landroid/graphics/RectF;
    iget v1, v0, Landroid/graphics/RectF;->left:F

    mul-float/2addr v1, p1

    .line 1681
    .local v1, "currentInsetsLeft":F
    iget v2, v0, Landroid/graphics/RectF;->right:F

    mul-float/2addr v2, p1

    .line 1682
    .local v2, "currentInsetsRight":F
    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    .line 1683
    .local v3, "insetsBottom":F
    iget-boolean v4, p5, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresentInApps:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 1684
    iget v4, p5, Lcom/android/launcher3/DeviceProfile;->taskbarSize:I

    int-to-float v4, v4

    sub-float v4, v3, v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1686
    :cond_0
    iget-object v4, p0, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mCurrentDrawnInsets:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/RectF;->top:F

    mul-float/2addr v6, p1

    mul-float v7, v3, p1

    invoke-virtual {v4, v1, v6, v2, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1688
    iget-boolean v4, p5, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    iget v5, p0, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mWindowCornerRadius:F

    :goto_0
    move v4, v5

    .line 1690
    .local v4, "fullscreenCornerRadius":F
    iget v5, p0, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mCornerRadius:F

    .line 1691
    invoke-static {p1, v5, v4}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v5

    div-float/2addr v5, p2

    div-float/2addr v5, p3

    iput v5, p0, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mCurrentDrawnCornerRadius:F

    .line 1696
    if-lez p4, :cond_2

    .line 1697
    int-to-float v5, p4

    int-to-float v6, p4

    add-float/2addr v6, v1

    add-float/2addr v6, v2

    div-float/2addr v5, v6

    iput v5, p0, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mScale:F

    .line 1699
    :cond_2
    return-void
.end method
