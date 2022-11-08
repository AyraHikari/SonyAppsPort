.class Lcom/android/launcher3/anim/Interpolators$1;
.super Ljava/lang/Object;
.source "Interpolators.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/anim/Interpolators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4
    .param p1, "v"    # F

    .line 97
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_3:Landroid/view/animation/Interpolator;

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->ZOOM_OUT:Landroid/view/animation/Interpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, v2, p1

    invoke-interface {v1, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    sub-float/2addr v2, v1

    invoke-interface {v0, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method
