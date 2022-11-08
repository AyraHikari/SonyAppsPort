.class Lcom/android/launcher3/LauncherState$2;
.super Lcom/android/launcher3/LauncherState$PageTranslationProvider;
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

    .line 99
    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherState$PageTranslationProvider;-><init>(Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public getPageTranslation(I)F
    .locals 1
    .param p1, "pageIndex"    # I

    .line 102
    const/4 v0, 0x0

    return v0
.end method
