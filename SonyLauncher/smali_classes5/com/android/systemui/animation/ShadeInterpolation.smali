.class public final Lcom/android/systemui/animation/ShadeInterpolation;
.super Ljava/lang/Object;
.source "ShadeInterpolation.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/android/systemui/animation/ShadeInterpolation;",
        "",
        "()V",
        "getContentAlpha",
        "",
        "fraction",
        "getNotificationScrimAlpha",
        "interpolateEaseInOut",
        "frameworks__base__packages__SystemUI__animation__android_common__SystemUIAnimationLib"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/animation/ShadeInterpolation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/animation/ShadeInterpolation;

    invoke-direct {v0}, Lcom/android/systemui/animation/ShadeInterpolation;-><init>()V

    sput-object v0, Lcom/android/systemui/animation/ShadeInterpolation;->INSTANCE:Lcom/android/systemui/animation/ShadeInterpolation;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getContentAlpha(F)F
    .locals 3
    .param p0, "fraction"    # F
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 23
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e99999a    # 0.3f

    invoke-static {v0, v1, v2, v1, p0}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result v0

    .line 24
    .local v0, "mappedFraction":F
    sget-object v1, Lcom/android/systemui/animation/ShadeInterpolation;->INSTANCE:Lcom/android/systemui/animation/ShadeInterpolation;

    invoke-direct {v1, v0}, Lcom/android/systemui/animation/ShadeInterpolation;->interpolateEaseInOut(F)F

    move-result v1

    return v1
.end method

.method public static final getNotificationScrimAlpha(F)F
    .locals 3
    .param p0, "fraction"    # F
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 13
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v0, v1, v0, v2, p0}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result v0

    .line 14
    .local v0, "mappedFraction":F
    sget-object v1, Lcom/android/systemui/animation/ShadeInterpolation;->INSTANCE:Lcom/android/systemui/animation/ShadeInterpolation;

    invoke-direct {v1, v0}, Lcom/android/systemui/animation/ShadeInterpolation;->interpolateEaseInOut(F)F

    move-result v1

    return v1
.end method

.method private final interpolateEaseInOut(F)F
    .locals 9
    .param p1, "fraction"    # F

    .line 28
    const v0, 0x3f99999a    # 1.2f

    mul-float/2addr v0, p1

    const v1, 0x3e4ccccd    # 0.2f

    sub-float/2addr v0, v1

    .line 29
    .local v0, "mappedFraction":F
    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_0

    .line 30
    goto :goto_0

    .line 32
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, v0

    .line 33
    .local v2, "oneMinusFrac":F
    float-to-double v3, v1

    const/high16 v1, 0x3f000000    # 0.5f

    float-to-double v5, v1

    const v1, 0x40490fd0

    mul-float/2addr v1, v2

    mul-float/2addr v1, v2

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    sub-double v7, v3, v7

    mul-double/2addr v5, v7

    sub-double/2addr v3, v5

    .line 34
    double-to-float v1, v3

    .line 29
    .end local v2    # "oneMinusFrac":F
    :goto_0
    return v1
.end method
