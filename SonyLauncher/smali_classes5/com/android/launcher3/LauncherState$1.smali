.class Lcom/android/launcher3/LauncherState$1;
.super Lcom/android/launcher3/LauncherState$PageAlphaProvider;
.source "LauncherState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/LauncherState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 91
    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherState$PageAlphaProvider;-><init>(Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public getPageAlpha(I)F
    .locals 1
    .param p1, "pageIndex"    # I

    .line 94
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method
