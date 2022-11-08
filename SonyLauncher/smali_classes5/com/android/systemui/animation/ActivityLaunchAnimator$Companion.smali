.class public final Lcom/android/systemui/animation/ActivityLaunchAnimator$Companion;
.super Ljava/lang/Object;
.source "ActivityLaunchAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/animation/ActivityLaunchAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0016\u001a\u00020\u0011H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\n \u0012*\u0004\u0018\u00010\u00110\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/android/systemui/animation/ActivityLaunchAnimator$Companion;",
        "",
        "()V",
        "ANIMATION_DELAY_NAV_FADE_IN",
        "",
        "ANIMATION_DURATION_NAV_FADE_IN",
        "ANIMATION_DURATION_NAV_FADE_OUT",
        "DIALOG_TIMINGS",
        "Lcom/android/systemui/animation/LaunchAnimator$Timings;",
        "getDIALOG_TIMINGS",
        "()Lcom/android/systemui/animation/LaunchAnimator$Timings;",
        "INTERPOLATORS",
        "Lcom/android/systemui/animation/LaunchAnimator$Interpolators;",
        "getINTERPOLATORS",
        "()Lcom/android/systemui/animation/LaunchAnimator$Interpolators;",
        "LAUNCH_TIMEOUT",
        "NAV_FADE_IN_INTERPOLATOR",
        "Landroid/view/animation/Interpolator;",
        "kotlin.jvm.PlatformType",
        "NAV_FADE_OUT_INTERPOLATOR",
        "Landroid/view/animation/PathInterpolator;",
        "TIMINGS",
        "createPositionXInterpolator",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$createPositionXInterpolator(Lcom/android/systemui/animation/ActivityLaunchAnimator$Companion;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "$this"    # Lcom/android/systemui/animation/ActivityLaunchAnimator$Companion;

    .line 59
    invoke-direct {p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Companion;->createPositionXInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0
.end method

.method private final createPositionXInterpolator()Landroid/view/animation/Interpolator;
    .locals 10

    .line 101
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    move-object v8, v0

    .local v8, "$this$createPositionXInterpolator_u24lambda_u2d0":Landroid/graphics/Path;
    const/4 v9, 0x0

    .line 102
    .local v9, "$i$a$-apply-ActivityLaunchAnimator$Companion$createPositionXInterpolator$path$1":I
    const/4 v1, 0x0

    invoke-virtual {v8, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 103
    const v2, 0x3df93dd9    # 0.1217f

    const v3, 0x3d3d3c36    # 0.0462f

    const v4, 0x3e19999a    # 0.15f

    const v5, 0x3eefec57    # 0.4686f

    const v6, 0x3e2ab368    # 0.1667f

    const v7, 0x3f28f5c3    # 0.66f

    move-object v1, v8

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 104
    const v2, 0x3e3bcd36    # 0.1834f

    const v3, 0x3f6346dc    # 0.8878f

    const v4, 0x3e2ab368    # 0.1667f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 105
    nop

    .line 101
    .end local v8    # "$this$createPositionXInterpolator_u24lambda_u2d0":Landroid/graphics/Path;
    .end local v9    # "$i$a$-apply-ActivityLaunchAnimator$Companion$createPositionXInterpolator$path$1":I
    nop

    .line 106
    .local v0, "path":Landroid/graphics/Path;
    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v0}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/graphics/Path;)V

    check-cast v1, Landroid/view/animation/Interpolator;

    return-object v1
.end method


# virtual methods
.method public final getDIALOG_TIMINGS()Lcom/android/systemui/animation/LaunchAnimator$Timings;
    .locals 1

    .line 75
    invoke-static {}, Lcom/android/systemui/animation/ActivityLaunchAnimator;->access$getDIALOG_TIMINGS$cp()Lcom/android/systemui/animation/LaunchAnimator$Timings;

    move-result-object v0

    return-object v0
.end method

.method public final getINTERPOLATORS()Lcom/android/systemui/animation/LaunchAnimator$Interpolators;
    .locals 1

    .line 81
    invoke-static {}, Lcom/android/systemui/animation/ActivityLaunchAnimator;->access$getINTERPOLATORS$cp()Lcom/android/systemui/animation/LaunchAnimator$Interpolators;

    move-result-object v0

    return-object v0
.end method
