.class public Lcom/android/launcher3/anim/Interpolators;
.super Ljava/lang/Object;
.source "Interpolators.java"


# static fields
.field public static final ACCEL:Landroid/view/animation/Interpolator;

.field public static final ACCELERATED_EASE:Landroid/view/animation/Interpolator;

.field public static final ACCEL_0_5:Landroid/view/animation/Interpolator;

.field public static final ACCEL_0_75:Landroid/view/animation/Interpolator;

.field public static final ACCEL_1_5:Landroid/view/animation/Interpolator;

.field public static final ACCEL_2:Landroid/view/animation/Interpolator;

.field public static final ACCEL_DEACCEL:Landroid/view/animation/Interpolator;

.field public static final AGGRESSIVE_EASE:Landroid/view/animation/Interpolator;

.field public static final AGGRESSIVE_EASE_IN_OUT:Landroid/view/animation/Interpolator;

.field public static final DEACCEL:Landroid/view/animation/Interpolator;

.field public static final DEACCEL_1_5:Landroid/view/animation/Interpolator;

.field public static final DEACCEL_1_7:Landroid/view/animation/Interpolator;

.field public static final DEACCEL_2:Landroid/view/animation/Interpolator;

.field public static final DEACCEL_2_5:Landroid/view/animation/Interpolator;

.field public static final DEACCEL_3:Landroid/view/animation/Interpolator;

.field public static final DECELERATED_EASE:Landroid/view/animation/Interpolator;

.field public static final EMPHASIZED_ACCELERATE:Landroid/view/animation/Interpolator;

.field public static final EMPHASIZED_DECELERATE:Landroid/view/animation/Interpolator;

.field public static final EXAGGERATED_EASE:Landroid/view/animation/Interpolator;

.field private static final FAST_FLING_PX_MS:F = 10.0f

.field public static final FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

.field public static final FINAL_FRAME:Landroid/view/animation/Interpolator;

.field public static final INSTANT:Landroid/view/animation/Interpolator;

.field public static final LINEAR:Landroid/view/animation/Interpolator;

.field public static final OVERSHOOT_1_2:Landroid/view/animation/Interpolator;

.field public static final OVERSHOOT_1_7:Landroid/view/animation/Interpolator;

.field public static final SCROLL:Landroid/view/animation/Interpolator;

.field public static final SCROLL_CUBIC:Landroid/view/animation/Interpolator;

.field public static final TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final TOUCH_RESPONSE_INTERPOLATOR_ACCEL_DEACCEL:Landroid/view/animation/Interpolator;

.field public static final ZOOM_IN:Landroid/view/animation/Interpolator;

.field public static final ZOOM_OUT:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 35
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 37
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/launcher3/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    .line 38
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/android/launcher3/anim/Interpolators;->ACCEL_0_5:Landroid/view/animation/Interpolator;

    .line 39
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/android/launcher3/anim/Interpolators;->ACCEL_0_75:Landroid/view/animation/Interpolator;

    .line 40
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/android/launcher3/anim/Interpolators;->ACCEL_1_5:Landroid/view/animation/Interpolator;

    .line 41
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v0, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/android/launcher3/anim/Interpolators;->ACCEL_2:Landroid/view/animation/Interpolator;

    .line 43
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/launcher3/anim/Interpolators;->DEACCEL:Landroid/view/animation/Interpolator;

    .line 44
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_1_5:Landroid/view/animation/Interpolator;

    .line 45
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const v1, 0x3fd9999a    # 1.7f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_1_7:Landroid/view/animation/Interpolator;

    .line 46
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_2:Landroid/view/animation/Interpolator;

    .line 47
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40200000    # 2.5f

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_2_5:Landroid/view/animation/Interpolator;

    .line 48
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_3:Landroid/view/animation/Interpolator;

    .line 50
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/launcher3/anim/Interpolators;->ACCEL_DEACCEL:Landroid/view/animation/Interpolator;

    .line 52
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ecccccd    # 0.4f

    const/4 v3, 0x0

    const v4, 0x3e4ccccd    # 0.2f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 54
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v3, v3, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/anim/Interpolators;->AGGRESSIVE_EASE:Landroid/view/animation/Interpolator;

    .line 55
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v6, 0x3f19999a    # 0.6f

    invoke-direct {v0, v6, v3, v2, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/anim/Interpolators;->AGGRESSIVE_EASE_IN_OUT:Landroid/view/animation/Interpolator;

    .line 57
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v3, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/anim/Interpolators;->DECELERATED_EASE:Landroid/view/animation/Interpolator;

    .line 58
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v3, v5, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/anim/Interpolators;->ACCELERATED_EASE:Landroid/view/animation/Interpolator;

    .line 60
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e99999a    # 0.3f

    const v4, 0x3f4ccccd    # 0.8f

    const v6, 0x3e19999a    # 0.15f

    invoke-direct {v0, v2, v3, v4, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/anim/Interpolators;->EMPHASIZED_ACCELERATE:Landroid/view/animation/Interpolator;

    .line 62
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v4, 0x3d4ccccd    # 0.05f

    const v6, 0x3f333333    # 0.7f

    const v7, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v4, v6, v7, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/anim/Interpolators;->EMPHASIZED_DECELERATE:Landroid/view/animation/Interpolator;

    .line 67
    new-instance v0, Lcom/android/launcher3/anim/Interpolators$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/launcher3/anim/Interpolators$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/android/launcher3/anim/Interpolators;->INSTANT:Landroid/view/animation/Interpolator;

    .line 72
    new-instance v0, Lcom/android/launcher3/anim/Interpolators$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/launcher3/anim/Interpolators$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lcom/android/launcher3/anim/Interpolators;->FINAL_FRAME:Landroid/view/animation/Interpolator;

    .line 75
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 76
    .local v0, "exaggeratedEase":Landroid/graphics/Path;
    invoke-virtual {v0, v3, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 77
    const v9, 0x3d4ccccd    # 0.05f

    const/4 v10, 0x0

    const v11, 0x3e088872

    const v12, 0x3da3d70a    # 0.08f

    const v13, 0x3e2aaa7e

    const v14, 0x3ecccccd    # 0.4f

    move-object v8, v0

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 78
    const v9, 0x3e666666    # 0.225f

    const v10, 0x3f70a3d7    # 0.94f

    const/high16 v11, 0x3f000000    # 0.5f

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 79
    new-instance v4, Landroid/view/animation/PathInterpolator;

    invoke-direct {v4, v0}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/graphics/Path;)V

    sput-object v4, Lcom/android/launcher3/anim/Interpolators;->EXAGGERATED_EASE:Landroid/view/animation/Interpolator;

    .line 82
    .end local v0    # "exaggeratedEase":Landroid/graphics/Path;
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const v4, 0x3f99999a    # 1.2f

    invoke-direct {v0, v4}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    sput-object v0, Lcom/android/launcher3/anim/Interpolators;->OVERSHOOT_1_2:Landroid/view/animation/Interpolator;

    .line 83
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    sput-object v0, Lcom/android/launcher3/anim/Interpolators;->OVERSHOOT_1_7:Landroid/view/animation/Interpolator;

    .line 85
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v3, v7, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/anim/Interpolators;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 87
    new-instance v0, Lcom/android/launcher3/anim/Interpolators$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/launcher3/anim/Interpolators$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Lcom/android/launcher3/anim/Interpolators;->TOUCH_RESPONSE_INTERPOLATOR_ACCEL_DEACCEL:Landroid/view/animation/Interpolator;

    .line 94
    new-instance v0, Lcom/android/launcher3/anim/Interpolators$1;

    invoke-direct {v0}, Lcom/android/launcher3/anim/Interpolators$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/anim/Interpolators;->ZOOM_IN:Landroid/view/animation/Interpolator;

    .line 101
    new-instance v0, Lcom/android/launcher3/anim/Interpolators$2;

    invoke-direct {v0}, Lcom/android/launcher3/anim/Interpolators$2;-><init>()V

    sput-object v0, Lcom/android/launcher3/anim/Interpolators;->ZOOM_OUT:Landroid/view/animation/Interpolator;

    .line 122
    new-instance v0, Lcom/android/launcher3/anim/Interpolators$3;

    invoke-direct {v0}, Lcom/android/launcher3/anim/Interpolators$3;-><init>()V

    sput-object v0, Lcom/android/launcher3/anim/Interpolators;->SCROLL:Landroid/view/animation/Interpolator;

    .line 130
    new-instance v0, Lcom/android/launcher3/anim/Interpolators$4;

    invoke-direct {v0}, Lcom/android/launcher3/anim/Interpolators$4;-><init>()V

    sput-object v0, Lcom/android/launcher3/anim/Interpolators;->SCROLL_CUBIC:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clampToProgress(FFF)F
    .locals 1
    .param p0, "progress"    # F
    .param p1, "lowerBound"    # F
    .param p2, "upperBound"    # F

    .line 199
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-static {v0, p0, p1, p2}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FFF)F

    move-result v0

    return v0
.end method

.method public static clampToProgress(Landroid/view/animation/Interpolator;FFF)F
    .locals 4
    .param p0, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p1, "progress"    # F
    .param p2, "lowerBound"    # F
    .param p3, "upperBound"    # F

    .line 176
    cmpg-float v0, p3, p2

    if-ltz v0, :cond_4

    .line 182
    cmpl-float v0, p1, p2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-nez v0, :cond_1

    cmpl-float v0, p1, p3

    if-nez v0, :cond_1

    .line 183
    cmpl-float v0, p1, v2

    if-nez v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 185
    :cond_1
    cmpg-float v0, p1, p2

    if-gez v0, :cond_2

    .line 186
    return v2

    .line 188
    :cond_2
    cmpl-float v0, p1, p3

    if-lez v0, :cond_3

    .line 189
    return v1

    .line 191
    :cond_3
    sub-float v0, p1, p2

    sub-float v1, p3, p2

    div-float/2addr v0, v1

    invoke-interface {p0, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    return v0

    .line 177
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 179
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    .line 178
    const-string v2, "upperBound (%f) must be greater than lowerBound (%f)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;
    .locals 4
    .param p0, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p1, "lowerBound"    # F
    .param p2, "upperBound"    # F

    .line 159
    cmpg-float v0, p2, p1

    if-ltz v0, :cond_0

    .line 164
    new-instance v0, Lcom/android/launcher3/anim/Interpolators$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/anim/Interpolators$$ExternalSyntheticLambda1;-><init>(Landroid/view/animation/Interpolator;FF)V

    return-object v0

    .line 160
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 162
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    .line 161
    const-string v2, "upperBound (%f) must be greater than lowerBound (%f)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$clampToProgress$3(Landroid/view/animation/Interpolator;FFF)F
    .locals 1
    .param p0, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p1, "lowerBound"    # F
    .param p2, "upperBound"    # F
    .param p3, "t"    # F

    .line 164
    invoke-static {p0, p3, p1, p2}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FFF)F

    move-result v0

    return v0
.end method

.method static synthetic lambda$mapToProgress$4(Landroid/view/animation/Interpolator;FFF)F
    .locals 1
    .param p0, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p1, "lowerBound"    # F
    .param p2, "upperBound"    # F
    .param p3, "t"    # F

    .line 209
    invoke-interface {p0, p3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    invoke-static {v0, p1, p2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    return v0
.end method

.method static synthetic lambda$reverse$5(Landroid/view/animation/Interpolator;F)F
    .locals 2
    .param p0, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p1, "t"    # F

    .line 219
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p1

    invoke-interface {p0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method static synthetic lambda$static$0(F)F
    .locals 1
    .param p0, "t"    # F

    .line 67
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method static synthetic lambda$static$1(F)F
    .locals 2
    .param p0, "t"    # F

    .line 72
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method static synthetic lambda$static$2(F)F
    .locals 2
    .param p0, "v"    # F

    .line 88
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->ACCEL_DEACCEL:Landroid/view/animation/Interpolator;

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v1, p0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method

.method public static mapToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p1, "lowerBound"    # F
    .param p2, "upperBound"    # F

    .line 209
    new-instance v0, Lcom/android/launcher3/anim/Interpolators$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/anim/Interpolators$$ExternalSyntheticLambda0;-><init>(Landroid/view/animation/Interpolator;FF)V

    return-object v0
.end method

.method public static overshootInterpolatorForVelocity(F)Landroid/view/animation/Interpolator;
    .locals 3
    .param p0, "velocity"    # F

    .line 149
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    return-object v0
.end method

.method public static reverse(Landroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 219
    new-instance v0, Lcom/android/launcher3/anim/Interpolators$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/launcher3/anim/Interpolators$$ExternalSyntheticLambda5;-><init>(Landroid/view/animation/Interpolator;)V

    return-object v0
.end method

.method public static scrollInterpolatorForVelocity(F)Landroid/view/animation/Interpolator;
    .locals 2
    .param p0, "velocity"    # F

    .line 141
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->SCROLL:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->SCROLL_CUBIC:Landroid/view/animation/Interpolator;

    :goto_0
    return-object v0
.end method
