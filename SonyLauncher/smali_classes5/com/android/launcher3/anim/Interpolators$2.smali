.class Lcom/android/launcher3/anim/Interpolators$2;
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


# static fields
.field private static final FOCAL_LENGTH:F = 0.35f


# direct methods
.method constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private zInterpolate(F)F
    .locals 2
    .param p1, "input"    # F

    .line 117
    const v0, 0x3eb33333    # 0.35f

    add-float v1, p1, v0

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    const v0, 0x3f3da130

    div-float/2addr v1, v0

    return v1
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1
    .param p1, "v"    # F

    .line 107
    invoke-direct {p0, p1}, Lcom/android/launcher3/anim/Interpolators$2;->zInterpolate(F)F

    move-result v0

    return v0
.end method
