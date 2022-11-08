.class public Lcom/android/launcher3/util/OverlayEdgeEffect;
.super Lcom/android/launcher3/util/EdgeEffectCompat;
.source "OverlayEdgeEffect.java"


# instance fields
.field private mDistance:F

.field private final mIsRtl:Z

.field private mIsScrolling:Z

.field private final mOverlay:Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "overlay"    # Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;

    .line 37
    invoke-direct {p0, p1}, Lcom/android/launcher3/util/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p2, p0, Lcom/android/launcher3/util/OverlayEdgeEffect;->mOverlay:Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/util/OverlayEdgeEffect;->mIsRtl:Z

    .line 41
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public finish()V
    .locals 1

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/util/OverlayEdgeEffect;->mDistance:F

    .line 82
    return-void
.end method

.method public getDistance()F
    .locals 1

    .line 45
    iget v0, p0, Lcom/android/launcher3/util/OverlayEdgeEffect;->mDistance:F

    return v0
.end method

.method public isFinished()Z
    .locals 2

    .line 63
    iget v0, p0, Lcom/android/launcher3/util/OverlayEdgeEffect;->mDistance:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAbsorb(I)V
    .locals 0
    .param p1, "velocity"    # I

    .line 59
    return-void
.end method

.method public onPullDistance(FF)F
    .locals 4
    .param p1, "deltaDistance"    # F
    .param p2, "displacement"    # F

    .line 49
    iget v0, p0, Lcom/android/launcher3/util/OverlayEdgeEffect;->mDistance:F

    add-float/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/util/OverlayEdgeEffect;->mDistance:F

    .line 50
    iget-boolean v0, p0, Lcom/android/launcher3/util/OverlayEdgeEffect;->mIsScrolling:Z

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/launcher3/util/OverlayEdgeEffect;->mOverlay:Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;

    invoke-interface {v0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;->onScrollInteractionBegin()V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/util/OverlayEdgeEffect;->mIsScrolling:Z

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/util/OverlayEdgeEffect;->mOverlay:Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;

    iget v2, p0, Lcom/android/launcher3/util/OverlayEdgeEffect;->mDistance:F

    iget-boolean v3, p0, Lcom/android/launcher3/util/OverlayEdgeEffect;->mIsRtl:Z

    invoke-interface {v0, v2, v3}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;->onScrollChange(FZ)V

    .line 55
    iget v0, p0, Lcom/android/launcher3/util/OverlayEdgeEffect;->mDistance:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    move v1, p1

    :cond_1
    return v1
.end method

.method public onRelease()V
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/android/launcher3/util/OverlayEdgeEffect;->mIsScrolling:Z

    if-eqz v0, :cond_0

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/util/OverlayEdgeEffect;->mDistance:F

    .line 70
    iget-object v0, p0, Lcom/android/launcher3/util/OverlayEdgeEffect;->mOverlay:Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;

    invoke-interface {v0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;->onScrollInteractionEnd()V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/util/OverlayEdgeEffect;->mIsScrolling:Z

    .line 73
    :cond_0
    return-void
.end method
