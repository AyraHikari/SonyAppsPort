.class public final Lcom/android/systemui/animation/LaunchAnimator;
.super Ljava/lang/Object;
.source "LaunchAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/animation/LaunchAnimator$Companion;,
        Lcom/android/systemui/animation/LaunchAnimator$Controller;,
        Lcom/android/systemui/animation/LaunchAnimator$State;,
        Lcom/android/systemui/animation/LaunchAnimator$Animation;,
        Lcom/android/systemui/animation/LaunchAnimator$Timings;,
        Lcom/android/systemui/animation/LaunchAnimator$Interpolators;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0018\u0000 !2\u00020\u0001:\u0006 !\"#$%B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J0\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u001d\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u0010H\u0000\u00a2\u0006\u0002\u0008\u0019J(\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u001f2\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0016R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/android/systemui/animation/LaunchAnimator;",
        "",
        "timings",
        "Lcom/android/systemui/animation/LaunchAnimator$Timings;",
        "interpolators",
        "Lcom/android/systemui/animation/LaunchAnimator$Interpolators;",
        "(Lcom/android/systemui/animation/LaunchAnimator$Timings;Lcom/android/systemui/animation/LaunchAnimator$Interpolators;)V",
        "cornerRadii",
        "",
        "launchContainerLocation",
        "",
        "applyStateToWindowBackgroundLayer",
        "",
        "drawable",
        "Landroid/graphics/drawable/GradientDrawable;",
        "state",
        "Lcom/android/systemui/animation/LaunchAnimator$State;",
        "linearProgress",
        "",
        "launchContainer",
        "Landroid/view/View;",
        "drawHole",
        "",
        "isExpandingFullyAbove",
        "endState",
        "isExpandingFullyAbove$frameworks__base__packages__SystemUI__animation__android_common__SystemUIAnimationLib",
        "startAnimation",
        "Lcom/android/systemui/animation/LaunchAnimator$Animation;",
        "controller",
        "Lcom/android/systemui/animation/LaunchAnimator$Controller;",
        "windowBackgroundColor",
        "",
        "Animation",
        "Companion",
        "Controller",
        "Interpolators",
        "State",
        "Timings",
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
.field public static final Companion:Lcom/android/systemui/animation/LaunchAnimator$Companion;

.field public static final DEBUG:Z

.field private static final SRC_MODE:Landroid/graphics/PorterDuffXfermode;


# instance fields
.field private final cornerRadii:[F

.field private final interpolators:Lcom/android/systemui/animation/LaunchAnimator$Interpolators;

.field private final launchContainerLocation:[I

.field private final timings:Lcom/android/systemui/animation/LaunchAnimator$Timings;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/animation/LaunchAnimator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/animation/LaunchAnimator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/animation/LaunchAnimator;->Companion:Lcom/android/systemui/animation/LaunchAnimator$Companion;

    .line 43
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/android/systemui/animation/LaunchAnimator;->SRC_MODE:Landroid/graphics/PorterDuffXfermode;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/animation/LaunchAnimator$Timings;Lcom/android/systemui/animation/LaunchAnimator$Interpolators;)V
    .locals 1
    .param p1, "timings"    # Lcom/android/systemui/animation/LaunchAnimator$Timings;
    .param p2, "interpolators"    # Lcom/android/systemui/animation/LaunchAnimator$Interpolators;

    const-string v0, "timings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interpolators"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/systemui/animation/LaunchAnimator;->timings:Lcom/android/systemui/animation/LaunchAnimator$Timings;

    .line 39
    iput-object p2, p0, Lcom/android/systemui/animation/LaunchAnimator;->interpolators:Lcom/android/systemui/animation/LaunchAnimator$Interpolators;

    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/animation/LaunchAnimator;->launchContainerLocation:[I

    .line 65
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/systemui/animation/LaunchAnimator;->cornerRadii:[F

    .line 37
    return-void
.end method

.method public static final synthetic access$applyStateToWindowBackgroundLayer(Lcom/android/systemui/animation/LaunchAnimator;Landroid/graphics/drawable/GradientDrawable;Lcom/android/systemui/animation/LaunchAnimator$State;FLandroid/view/View;Z)V
    .locals 0
    .param p0, "$this"    # Lcom/android/systemui/animation/LaunchAnimator;
    .param p1, "drawable"    # Landroid/graphics/drawable/GradientDrawable;
    .param p2, "state"    # Lcom/android/systemui/animation/LaunchAnimator$State;
    .param p3, "linearProgress"    # F
    .param p4, "launchContainer"    # Landroid/view/View;
    .param p5, "drawHole"    # Z

    .line 37
    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/animation/LaunchAnimator;->applyStateToWindowBackgroundLayer(Landroid/graphics/drawable/GradientDrawable;Lcom/android/systemui/animation/LaunchAnimator$State;FLandroid/view/View;Z)V

    return-void
.end method

.method public static final synthetic access$getInterpolators$p(Lcom/android/systemui/animation/LaunchAnimator;)Lcom/android/systemui/animation/LaunchAnimator$Interpolators;
    .locals 1
    .param p0, "$this"    # Lcom/android/systemui/animation/LaunchAnimator;

    .line 37
    iget-object v0, p0, Lcom/android/systemui/animation/LaunchAnimator;->interpolators:Lcom/android/systemui/animation/LaunchAnimator$Interpolators;

    return-object v0
.end method

.method public static final synthetic access$getTimings$p(Lcom/android/systemui/animation/LaunchAnimator;)Lcom/android/systemui/animation/LaunchAnimator$Timings;
    .locals 1
    .param p0, "$this"    # Lcom/android/systemui/animation/LaunchAnimator;

    .line 37
    iget-object v0, p0, Lcom/android/systemui/animation/LaunchAnimator;->timings:Lcom/android/systemui/animation/LaunchAnimator$Timings;

    return-object v0
.end method

.method public static final synthetic access$startAnimation$maybeUpdateEndState(Lkotlin/jvm/internal/Ref$IntRef;Lcom/android/systemui/animation/LaunchAnimator$State;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0
    .param p0, "endTop"    # Lkotlin/jvm/internal/Ref$IntRef;
    .param p1, "$endState"    # Lcom/android/systemui/animation/LaunchAnimator$State;
    .param p2, "endBottom"    # Lkotlin/jvm/internal/Ref$IntRef;
    .param p3, "endLeft"    # Lkotlin/jvm/internal/Ref$IntRef;
    .param p4, "endRight"    # Lkotlin/jvm/internal/Ref$IntRef;
    .param p5, "endCenterX"    # Lkotlin/jvm/internal/Ref$FloatRef;
    .param p6, "endWidth"    # Lkotlin/jvm/internal/Ref$IntRef;

    .line 37
    invoke-static/range {p0 .. p6}, Lcom/android/systemui/animation/LaunchAnimator;->startAnimation$maybeUpdateEndState(Lkotlin/jvm/internal/Ref$IntRef;Lcom/android/systemui/animation/LaunchAnimator$State;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$IntRef;)V

    return-void
.end method

.method private final applyStateToWindowBackgroundLayer(Landroid/graphics/drawable/GradientDrawable;Lcom/android/systemui/animation/LaunchAnimator$State;FLandroid/view/View;Z)V
    .locals 15
    .param p1, "drawable"    # Landroid/graphics/drawable/GradientDrawable;
    .param p2, "state"    # Lcom/android/systemui/animation/LaunchAnimator$State;
    .param p3, "linearProgress"    # F
    .param p4, "launchContainer"    # Landroid/view/View;
    .param p5, "drawHole"    # Z

    .line 397
    move-object v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/systemui/animation/LaunchAnimator;->launchContainerLocation:[I

    move-object/from16 v3, p4

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 398
    nop

    .line 399
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/animation/LaunchAnimator$State;->getLeft()I

    move-result v2

    iget-object v4, v0, Lcom/android/systemui/animation/LaunchAnimator;->launchContainerLocation:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    sub-int/2addr v2, v4

    .line 400
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/animation/LaunchAnimator$State;->getTop()I

    move-result v4

    iget-object v6, v0, Lcom/android/systemui/animation/LaunchAnimator;->launchContainerLocation:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    sub-int/2addr v4, v6

    .line 401
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/animation/LaunchAnimator$State;->getRight()I

    move-result v6

    iget-object v8, v0, Lcom/android/systemui/animation/LaunchAnimator;->launchContainerLocation:[I

    aget v8, v8, v5

    sub-int/2addr v6, v8

    .line 402
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/animation/LaunchAnimator$State;->getBottom()I

    move-result v8

    iget-object v9, v0, Lcom/android/systemui/animation/LaunchAnimator;->launchContainerLocation:[I

    aget v9, v9, v7

    sub-int/2addr v8, v9

    .line 398
    invoke-virtual {v1, v2, v4, v6, v8}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 406
    iget-object v2, v0, Lcom/android/systemui/animation/LaunchAnimator;->cornerRadii:[F

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/animation/LaunchAnimator$State;->getTopCornerRadius()F

    move-result v4

    aput v4, v2, v5

    .line 407
    iget-object v2, v0, Lcom/android/systemui/animation/LaunchAnimator;->cornerRadii:[F

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/animation/LaunchAnimator$State;->getTopCornerRadius()F

    move-result v4

    aput v4, v2, v7

    .line 408
    iget-object v2, v0, Lcom/android/systemui/animation/LaunchAnimator;->cornerRadii:[F

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/animation/LaunchAnimator$State;->getTopCornerRadius()F

    move-result v4

    const/4 v5, 0x2

    aput v4, v2, v5

    .line 409
    iget-object v2, v0, Lcom/android/systemui/animation/LaunchAnimator;->cornerRadii:[F

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/animation/LaunchAnimator$State;->getTopCornerRadius()F

    move-result v4

    const/4 v5, 0x3

    aput v4, v2, v5

    .line 410
    iget-object v2, v0, Lcom/android/systemui/animation/LaunchAnimator;->cornerRadii:[F

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/animation/LaunchAnimator$State;->getBottomCornerRadius()F

    move-result v4

    const/4 v5, 0x4

    aput v4, v2, v5

    .line 411
    iget-object v2, v0, Lcom/android/systemui/animation/LaunchAnimator;->cornerRadii:[F

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/animation/LaunchAnimator$State;->getBottomCornerRadius()F

    move-result v4

    const/4 v5, 0x5

    aput v4, v2, v5

    .line 412
    iget-object v2, v0, Lcom/android/systemui/animation/LaunchAnimator;->cornerRadii:[F

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/animation/LaunchAnimator$State;->getBottomCornerRadius()F

    move-result v4

    const/4 v5, 0x6

    aput v4, v2, v5

    .line 413
    iget-object v2, v0, Lcom/android/systemui/animation/LaunchAnimator;->cornerRadii:[F

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/animation/LaunchAnimator$State;->getBottomCornerRadius()F

    move-result v4

    const/4 v5, 0x7

    aput v4, v2, v5

    .line 414
    iget-object v2, v0, Lcom/android/systemui/animation/LaunchAnimator;->cornerRadii:[F

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 418
    sget-object v2, Lcom/android/systemui/animation/LaunchAnimator;->Companion:Lcom/android/systemui/animation/LaunchAnimator$Companion;

    .line 419
    iget-object v9, v0, Lcom/android/systemui/animation/LaunchAnimator;->timings:Lcom/android/systemui/animation/LaunchAnimator$Timings;

    .line 420
    nop

    .line 421
    invoke-virtual {v9}, Lcom/android/systemui/animation/LaunchAnimator$Timings;->getContentBeforeFadeOutDelay()J

    move-result-wide v11

    .line 422
    iget-object v4, v0, Lcom/android/systemui/animation/LaunchAnimator;->timings:Lcom/android/systemui/animation/LaunchAnimator$Timings;

    invoke-virtual {v4}, Lcom/android/systemui/animation/LaunchAnimator$Timings;->getContentBeforeFadeOutDuration()J

    move-result-wide v13

    .line 418
    move-object v8, v2

    move/from16 v10, p3

    invoke-virtual/range {v8 .. v14}, Lcom/android/systemui/animation/LaunchAnimator$Companion;->getProgress(Lcom/android/systemui/animation/LaunchAnimator$Timings;FJJ)F

    move-result v4

    .line 424
    .local v4, "fadeInProgress":F
    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v5, v4, v5

    const/16 v6, 0xff

    if-gez v5, :cond_0

    .line 426
    iget-object v2, v0, Lcom/android/systemui/animation/LaunchAnimator;->interpolators:Lcom/android/systemui/animation/LaunchAnimator$Interpolators;

    invoke-virtual {v2}, Lcom/android/systemui/animation/LaunchAnimator$Interpolators;->getContentBeforeFadeOutInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 425
    nop

    .line 427
    .local v2, "alpha":F
    int-to-float v5, v6

    mul-float/2addr v5, v2

    invoke-static {v5}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .end local v2    # "alpha":F
    goto :goto_0

    .line 429
    :cond_0
    nop

    .line 430
    iget-object v9, v0, Lcom/android/systemui/animation/LaunchAnimator;->timings:Lcom/android/systemui/animation/LaunchAnimator$Timings;

    .line 431
    nop

    .line 432
    invoke-virtual {v9}, Lcom/android/systemui/animation/LaunchAnimator$Timings;->getContentAfterFadeInDelay()J

    move-result-wide v11

    .line 433
    iget-object v5, v0, Lcom/android/systemui/animation/LaunchAnimator;->timings:Lcom/android/systemui/animation/LaunchAnimator$Timings;

    invoke-virtual {v5}, Lcom/android/systemui/animation/LaunchAnimator$Timings;->getContentAfterFadeInDuration()J

    move-result-wide v13

    .line 429
    move-object v8, v2

    move/from16 v10, p3

    invoke-virtual/range {v8 .. v14}, Lcom/android/systemui/animation/LaunchAnimator$Companion;->getProgress(Lcom/android/systemui/animation/LaunchAnimator$Timings;FJJ)F

    move-result v2

    .line 436
    .local v2, "fadeOutProgress":F
    int-to-float v5, v7

    iget-object v7, v0, Lcom/android/systemui/animation/LaunchAnimator;->interpolators:Lcom/android/systemui/animation/LaunchAnimator$Interpolators;

    invoke-virtual {v7}, Lcom/android/systemui/animation/LaunchAnimator$Interpolators;->getContentAfterFadeInInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v7

    invoke-interface {v7, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    sub-float/2addr v5, v7

    .line 435
    nop

    .line 437
    .local v5, "alpha":F
    int-to-float v6, v6

    mul-float/2addr v6, v5

    invoke-static {v6}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 439
    if-eqz p5, :cond_1

    .line 440
    sget-object v6, Lcom/android/systemui/animation/LaunchAnimator;->SRC_MODE:Landroid/graphics/PorterDuffXfermode;

    check-cast v6, Landroid/graphics/Xfermode;

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/GradientDrawable;->setXfermode(Landroid/graphics/Xfermode;)V

    .line 443
    .end local v2    # "fadeOutProgress":F
    .end local v5    # "alpha":F
    :cond_1
    :goto_0
    return-void
.end method

.method public static final getProgress(Lcom/android/systemui/animation/LaunchAnimator$Timings;FJJ)F
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/systemui/animation/LaunchAnimator;->Companion:Lcom/android/systemui/animation/LaunchAnimator$Companion;

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/animation/LaunchAnimator$Companion;->getProgress(Lcom/android/systemui/animation/LaunchAnimator$Timings;FJJ)F

    move-result v0

    return v0
.end method

.method public static synthetic startAnimation$default(Lcom/android/systemui/animation/LaunchAnimator;Lcom/android/systemui/animation/LaunchAnimator$Controller;Lcom/android/systemui/animation/LaunchAnimator$State;IZILjava/lang/Object;)Lcom/android/systemui/animation/LaunchAnimator$Animation;
    .locals 0

    .line 212
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 216
    const/4 p4, 0x0

    .line 212
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/animation/LaunchAnimator;->startAnimation(Lcom/android/systemui/animation/LaunchAnimator$Controller;Lcom/android/systemui/animation/LaunchAnimator$State;IZ)Lcom/android/systemui/animation/LaunchAnimator$Animation;

    move-result-object p0

    return-object p0
.end method

.method private static final startAnimation$maybeUpdateEndState(Lkotlin/jvm/internal/Ref$IntRef;Lcom/android/systemui/animation/LaunchAnimator$State;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 2
    .param p0, "endTop"    # Lkotlin/jvm/internal/Ref$IntRef;
    .param p1, "$endState"    # Lcom/android/systemui/animation/LaunchAnimator$State;
    .param p2, "endBottom"    # Lkotlin/jvm/internal/Ref$IntRef;
    .param p3, "endLeft"    # Lkotlin/jvm/internal/Ref$IntRef;
    .param p4, "endRight"    # Lkotlin/jvm/internal/Ref$IntRef;
    .param p5, "endCenterX"    # Lkotlin/jvm/internal/Ref$FloatRef;
    .param p6, "endWidth"    # Lkotlin/jvm/internal/Ref$IntRef;

    .line 241
    iget v0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {p1}, Lcom/android/systemui/animation/LaunchAnimator$State;->getTop()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {p1}, Lcom/android/systemui/animation/LaunchAnimator$State;->getBottom()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 242
    iget v0, p3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {p1}, Lcom/android/systemui/animation/LaunchAnimator$State;->getLeft()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {p1}, Lcom/android/systemui/animation/LaunchAnimator$State;->getRight()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 243
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/animation/LaunchAnimator$State;->getTop()I

    move-result v0

    iput v0, p0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 244
    invoke-virtual {p1}, Lcom/android/systemui/animation/LaunchAnimator$State;->getBottom()I

    move-result v0

    iput v0, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 245
    invoke-virtual {p1}, Lcom/android/systemui/animation/LaunchAnimator$State;->getLeft()I

    move-result v0

    iput v0, p3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 246
    invoke-virtual {p1}, Lcom/android/systemui/animation/LaunchAnimator$State;->getRight()I

    move-result v0

    iput v0, p4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 247
    iget v0, p3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v1, p4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p5, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 248
    iget v0, p4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v1, p3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sub-int/2addr v0, v1

    iput v0, p6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 250
    :cond_1
    return-void
.end method


# virtual methods
.method public final isExpandingFullyAbove$frameworks__base__packages__SystemUI__animation__android_common__SystemUIAnimationLib(Landroid/view/View;Lcom/android/systemui/animation/LaunchAnimator$State;)Z
    .locals 5
    .param p1, "launchContainer"    # Landroid/view/View;
    .param p2, "endState"    # Lcom/android/systemui/animation/LaunchAnimator$State;

    const-string v0, "launchContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/android/systemui/animation/LaunchAnimator;->launchContainerLocation:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 383
    invoke-virtual {p2}, Lcom/android/systemui/animation/LaunchAnimator$State;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/animation/LaunchAnimator;->launchContainerLocation:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    const/4 v3, 0x0

    if-gt v0, v1, :cond_0

    .line 384
    invoke-virtual {p2}, Lcom/android/systemui/animation/LaunchAnimator$State;->getBottom()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/animation/LaunchAnimator;->launchContainerLocation:[I

    aget v1, v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v1, v4

    if-lt v0, v1, :cond_0

    .line 385
    invoke-virtual {p2}, Lcom/android/systemui/animation/LaunchAnimator$State;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/animation/LaunchAnimator;->launchContainerLocation:[I

    aget v1, v1, v3

    if-gt v0, v1, :cond_0

    .line 386
    invoke-virtual {p2}, Lcom/android/systemui/animation/LaunchAnimator$State;->getRight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/animation/LaunchAnimator;->launchContainerLocation:[I

    aget v1, v1, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    .line 383
    :goto_0
    return v2
.end method

.method public final startAnimation(Lcom/android/systemui/animation/LaunchAnimator$Controller;Lcom/android/systemui/animation/LaunchAnimator$State;IZ)Lcom/android/systemui/animation/LaunchAnimator$Animation;
    .locals 55
    .param p1, "controller"    # Lcom/android/systemui/animation/LaunchAnimator$Controller;
    .param p2, "endState"    # Lcom/android/systemui/animation/LaunchAnimator$State;
    .param p3, "windowBackgroundColor"    # I
    .param p4, "drawHole"    # Z

    move-object/from16 v15, p0

    move-object/from16 v14, p2

    const-string v0, "controller"

    move-object/from16 v13, p1

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endState"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    invoke-interface/range {p1 .. p1}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->createAnimatorState()Lcom/android/systemui/animation/LaunchAnimator$State;

    move-result-object v35

    .line 221
    .local v35, "state":Lcom/android/systemui/animation/LaunchAnimator$State;
    invoke-virtual/range {v35 .. v35}, Lcom/android/systemui/animation/LaunchAnimator$State;->getTop()I

    move-result v36

    .line 222
    .local v36, "startTop":I
    invoke-virtual/range {v35 .. v35}, Lcom/android/systemui/animation/LaunchAnimator$State;->getBottom()I

    move-result v37

    .line 223
    .local v37, "startBottom":I
    invoke-virtual/range {v35 .. v35}, Lcom/android/systemui/animation/LaunchAnimator$State;->getLeft()I

    move-result v38

    .line 224
    .local v38, "startLeft":I
    invoke-virtual/range {v35 .. v35}, Lcom/android/systemui/animation/LaunchAnimator$State;->getRight()I

    move-result v39

    .line 225
    .local v39, "startRight":I
    add-int v0, v38, v39

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v40, v0, v1

    .line 226
    .local v40, "startCenterX":F
    sub-int v41, v39, v38

    .line 227
    .local v41, "startWidth":I
    invoke-virtual/range {v35 .. v35}, Lcom/android/systemui/animation/LaunchAnimator$State;->getTopCornerRadius()F

    move-result v42

    .line 228
    .local v42, "startTopCornerRadius":F
    invoke-virtual/range {v35 .. v35}, Lcom/android/systemui/animation/LaunchAnimator$State;->getBottomCornerRadius()F

    move-result v43

    .line 231
    .local v43, "startBottomCornerRadius":F
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    move-object v12, v0

    .local v12, "endTop":Lkotlin/jvm/internal/Ref$IntRef;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/animation/LaunchAnimator$State;->getTop()I

    move-result v0

    iput v0, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 232
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    move-object v11, v0

    .local v11, "endBottom":Lkotlin/jvm/internal/Ref$IntRef;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/animation/LaunchAnimator$State;->getBottom()I

    move-result v0

    iput v0, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 233
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    move-object v10, v0

    .local v10, "endLeft":Lkotlin/jvm/internal/Ref$IntRef;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/animation/LaunchAnimator$State;->getLeft()I

    move-result v0

    iput v0, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 234
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    move-object v9, v0

    .local v9, "endRight":Lkotlin/jvm/internal/Ref$IntRef;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/animation/LaunchAnimator$State;->getRight()I

    move-result v0

    iput v0, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 235
    new-instance v0, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    move-object v8, v0

    .local v8, "endCenterX":Lkotlin/jvm/internal/Ref$FloatRef;
    iget v0, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v2, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 236
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    move-object v7, v0

    .local v7, "endWidth":Lkotlin/jvm/internal/Ref$IntRef;
    iget v0, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v1, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    sub-int/2addr v0, v1

    iput v0, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 237
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/animation/LaunchAnimator$State;->getTopCornerRadius()F

    move-result v44

    .line 238
    .local v44, "endTopCornerRadius":F
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/animation/LaunchAnimator$State;->getBottomCornerRadius()F

    move-result v45

    .line 252
    .local v45, "endBottomCornerRadius":F
    invoke-interface/range {p1 .. p1}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->getLaunchContainer()Landroid/view/ViewGroup;

    move-result-object v46

    .line 253
    .local v46, "launchContainer":Landroid/view/ViewGroup;
    move-object/from16 v0, v46

    check-cast v0, Landroid/view/View;

    invoke-virtual {v15, v0, v14}, Lcom/android/systemui/animation/LaunchAnimator;->isExpandingFullyAbove$frameworks__base__packages__SystemUI__animation__android_common__SystemUIAnimationLib(Landroid/view/View;Lcom/android/systemui/animation/LaunchAnimator$State;)Z

    move-result v47

    .line 259
    .local v47, "isExpandingFullyAbove":Z
    new-instance v32, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct/range {v32 .. v32}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    move-object/from16 v0, v32

    .local v0, "$this$startAnimation_u24lambda_u2d0":Landroid/graphics/drawable/GradientDrawable;
    const/4 v1, 0x0

    .line 260
    .local v1, "$i$a$-apply-LaunchAnimator$startAnimation$windowBackgroundLayer$1":I
    move/from16 v6, p3

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 261
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 262
    nop

    .line 259
    .end local v0    # "$this$startAnimation_u24lambda_u2d0":Landroid/graphics/drawable/GradientDrawable;
    .end local v1    # "$i$a$-apply-LaunchAnimator$startAnimation$windowBackgroundLayer$1":I
    nop

    .line 265
    .local v32, "windowBackgroundLayer":Landroid/graphics/drawable/GradientDrawable;
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 266
    .local v5, "animator":Landroid/animation/ValueAnimator;
    iget-object v0, v15, Lcom/android/systemui/animation/LaunchAnimator;->timings:Lcom/android/systemui/animation/LaunchAnimator$Timings;

    invoke-virtual {v0}, Lcom/android/systemui/animation/LaunchAnimator$Timings;->getTotalDuration()J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 267
    sget-object v0, Lcom/android/systemui/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    check-cast v0, Landroid/animation/TimeInterpolator;

    invoke-virtual {v5, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 271
    invoke-interface/range {p1 .. p1}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->getOpeningWindowSyncView()Landroid/view/View;

    move-result-object v48

    .line 272
    .local v48, "openingWindowSyncView":Landroid/view/View;
    if-nez v48, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual/range {v48 .. v48}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    :goto_0
    move-object/from16 v34, v0

    .line 273
    .local v34, "openingWindowSyncViewOverlay":Landroid/view/ViewOverlay;
    if-eqz v48, :cond_1

    .line 274
    invoke-virtual/range {v48 .. v48}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->getLaunchContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    move/from16 v33, v0

    goto :goto_1

    :cond_1
    move/from16 v33, v2

    .line 273
    :goto_1
    nop

    .local v33, "moveBackgroundLayerWhenAppIsVisible":Z
    move/from16 v16, v33

    .line 276
    invoke-virtual/range {v46 .. v46}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v49

    .local v49, "launchContainerOverlay":Landroid/view/ViewGroupOverlay;
    move-object/from16 v18, v49

    .line 277
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    move-object v4, v0

    .local v4, "cancelled":Lkotlin/jvm/internal/Ref$BooleanRef;
    move-object v1, v4

    .line 278
    new-instance v17, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct/range {v17 .. v17}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 280
    .local v17, "movedBackgroundLayer":Lkotlin/jvm/internal/Ref$BooleanRef;
    new-instance v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$1;

    move-object/from16 v28, v0

    move-object/from16 v29, p1

    move/from16 v30, v47

    move-object/from16 v31, v49

    invoke-direct/range {v28 .. v34}, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$1;-><init>(Lcom/android/systemui/animation/LaunchAnimator$Controller;ZLandroid/view/ViewGroupOverlay;Landroid/graphics/drawable/GradientDrawable;ZLandroid/view/ViewOverlay;)V

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v5, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 306
    new-instance v28, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;

    move-object/from16 v0, v28

    move-object/from16 v2, p0

    move/from16 v3, v40

    move-object/from16 v50, v4

    .end local v4    # "cancelled":Lkotlin/jvm/internal/Ref$BooleanRef;
    .local v50, "cancelled":Lkotlin/jvm/internal/Ref$BooleanRef;
    move-object v4, v8

    move-object/from16 v51, v5

    .end local v5    # "animator":Landroid/animation/ValueAnimator;
    .local v51, "animator":Landroid/animation/ValueAnimator;
    move/from16 v5, v41

    move-object v6, v7

    move-object/from16 v29, v7

    .end local v7    # "endWidth":Lkotlin/jvm/internal/Ref$IntRef;
    .local v29, "endWidth":Lkotlin/jvm/internal/Ref$IntRef;
    move-object/from16 v7, v35

    move-object/from16 v30, v8

    .end local v8    # "endCenterX":Lkotlin/jvm/internal/Ref$FloatRef;
    .local v30, "endCenterX":Lkotlin/jvm/internal/Ref$FloatRef;
    move/from16 v8, v36

    move-object/from16 v31, v9

    .end local v9    # "endRight":Lkotlin/jvm/internal/Ref$IntRef;
    .local v31, "endRight":Lkotlin/jvm/internal/Ref$IntRef;
    move-object v9, v12

    move-object/from16 v52, v10

    .end local v10    # "endLeft":Lkotlin/jvm/internal/Ref$IntRef;
    .local v52, "endLeft":Lkotlin/jvm/internal/Ref$IntRef;
    move/from16 v10, v37

    move-object/from16 v53, v11

    .end local v11    # "endBottom":Lkotlin/jvm/internal/Ref$IntRef;
    .local v53, "endBottom":Lkotlin/jvm/internal/Ref$IntRef;
    move-object/from16 v54, v12

    .end local v12    # "endTop":Lkotlin/jvm/internal/Ref$IntRef;
    .local v54, "endTop":Lkotlin/jvm/internal/Ref$IntRef;
    move/from16 v12, v42

    move/from16 v13, v44

    move/from16 v14, v43

    move/from16 v15, v45

    move-object/from16 v19, v32

    move-object/from16 v20, v34

    move-object/from16 v21, v46

    move-object/from16 v22, v48

    move-object/from16 v23, p1

    move/from16 v24, p4

    move-object/from16 v25, p2

    move-object/from16 v26, v52

    move-object/from16 v27, v31

    invoke-direct/range {v0 .. v27}, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/systemui/animation/LaunchAnimator;FLkotlin/jvm/internal/Ref$FloatRef;ILkotlin/jvm/internal/Ref$IntRef;Lcom/android/systemui/animation/LaunchAnimator$State;ILkotlin/jvm/internal/Ref$IntRef;ILkotlin/jvm/internal/Ref$IntRef;FFFFZLkotlin/jvm/internal/Ref$BooleanRef;Landroid/view/ViewGroupOverlay;Landroid/graphics/drawable/GradientDrawable;Landroid/view/ViewOverlay;Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/systemui/animation/LaunchAnimator$Controller;ZLcom/android/systemui/animation/LaunchAnimator$State;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;)V

    move-object/from16 v0, v28

    check-cast v0, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v1, v51

    .end local v51    # "animator":Landroid/animation/ValueAnimator;
    .local v1, "animator":Landroid/animation/ValueAnimator;
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 371
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 372
    new-instance v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$3;

    move-object/from16 v2, v50

    .end local v50    # "cancelled":Lkotlin/jvm/internal/Ref$BooleanRef;
    .local v2, "cancelled":Lkotlin/jvm/internal/Ref$BooleanRef;
    invoke-direct {v0, v2, v1}, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$3;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/animation/ValueAnimator;)V

    check-cast v0, Lcom/android/systemui/animation/LaunchAnimator$Animation;

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
