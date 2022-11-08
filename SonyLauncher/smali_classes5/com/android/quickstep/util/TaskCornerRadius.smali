.class public Lcom/android/quickstep/util/TaskCornerRadius;
.super Ljava/lang/Object;
.source "TaskCornerRadius.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;)F
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 30
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->supportsRoundedCornersOnWindows(Landroid/content/res/Resources;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    sget v1, Lcom/android/launcher3/R$dimen;->task_corner_radius_small:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    return v1

    .line 34
    :cond_0
    sget v1, Lcom/android/launcher3/R$dimen;->task_corner_radius_override:I

    .line 35
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 36
    .local v1, "overriddenRadius":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/android/launcher3/util/Themes;->getDialogCornerRadius(Landroid/content/Context;)F

    move-result v2

    :goto_0
    return v2
.end method
