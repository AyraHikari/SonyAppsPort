.class public Lcom/android/launcher3/util/EdgeEffectCompat;
.super Landroid/widget/EdgeEffect;
.source "EdgeEffectCompat.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method


# virtual methods
.method public getDistance()F
    .locals 1

    .line 34
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/EdgeEffect;->getDistance()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onPullDistance(FF)F
    .locals 1
    .param p1, "deltaDistance"    # F
    .param p2, "displacement"    # F

    .line 39
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v0, :cond_0

    .line 40
    invoke-super {p0, p1, p2}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    move-result v0

    return v0

    .line 42
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/util/EdgeEffectCompat;->onPull(FF)V

    .line 43
    return p1
.end method
