.class final Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;
.super Ljava/lang/Object;
.source "LaunchAnimator.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/animation/LaunchAnimator;->startAnimation(Lcom/android/systemui/animation/LaunchAnimator$Controller;Lcom/android/systemui/animation/LaunchAnimator$State;IZ)Lcom/android/systemui/animation/LaunchAnimator$Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "animation",
        "Landroid/animation/ValueAnimator;",
        "kotlin.jvm.PlatformType",
        "onAnimationUpdate"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $cancelled:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $controller:Lcom/android/systemui/animation/LaunchAnimator$Controller;

.field final synthetic $drawHole:Z

.field final synthetic $endBottom:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $endBottomCornerRadius:F

.field final synthetic $endCenterX:Lkotlin/jvm/internal/Ref$FloatRef;

.field final synthetic $endLeft:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $endRight:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $endState:Lcom/android/systemui/animation/LaunchAnimator$State;

.field final synthetic $endTop:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $endTopCornerRadius:F

.field final synthetic $endWidth:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $launchContainer:Landroid/view/ViewGroup;

.field final synthetic $launchContainerOverlay:Landroid/view/ViewGroupOverlay;

.field final synthetic $moveBackgroundLayerWhenAppIsVisible:Z

.field final synthetic $movedBackgroundLayer:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $openingWindowSyncView:Landroid/view/View;

.field final synthetic $openingWindowSyncViewOverlay:Landroid/view/ViewOverlay;

.field final synthetic $startBottom:I

.field final synthetic $startBottomCornerRadius:F

.field final synthetic $startCenterX:F

.field final synthetic $startTop:I

.field final synthetic $startTopCornerRadius:F

.field final synthetic $startWidth:I

.field final synthetic $state:Lcom/android/systemui/animation/LaunchAnimator$State;

.field final synthetic $windowBackgroundLayer:Landroid/graphics/drawable/GradientDrawable;

.field final synthetic this$0:Lcom/android/systemui/animation/LaunchAnimator;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/systemui/animation/LaunchAnimator;FLkotlin/jvm/internal/Ref$FloatRef;ILkotlin/jvm/internal/Ref$IntRef;Lcom/android/systemui/animation/LaunchAnimator$State;ILkotlin/jvm/internal/Ref$IntRef;ILkotlin/jvm/internal/Ref$IntRef;FFFFZLkotlin/jvm/internal/Ref$BooleanRef;Landroid/view/ViewGroupOverlay;Landroid/graphics/drawable/GradientDrawable;Landroid/view/ViewOverlay;Landroid/view/ViewGroup;Landroid/view/View;Lcom/android/systemui/animation/LaunchAnimator$Controller;ZLcom/android/systemui/animation/LaunchAnimator$State;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$cancelled:Lkotlin/jvm/internal/Ref$BooleanRef;

    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->this$0:Lcom/android/systemui/animation/LaunchAnimator;

    move/from16 v3, p3

    iput v3, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$startCenterX:F

    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endCenterX:Lkotlin/jvm/internal/Ref$FloatRef;

    move/from16 v5, p5

    iput v5, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$startWidth:I

    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endWidth:Lkotlin/jvm/internal/Ref$IntRef;

    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$state:Lcom/android/systemui/animation/LaunchAnimator$State;

    move/from16 v8, p8

    iput v8, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$startTop:I

    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endTop:Lkotlin/jvm/internal/Ref$IntRef;

    move/from16 v10, p10

    iput v10, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$startBottom:I

    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endBottom:Lkotlin/jvm/internal/Ref$IntRef;

    move/from16 v12, p12

    iput v12, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$startTopCornerRadius:F

    move/from16 v13, p13

    iput v13, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endTopCornerRadius:F

    move/from16 v14, p14

    iput v14, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$startBottomCornerRadius:F

    move/from16 v15, p15

    iput v15, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endBottomCornerRadius:F

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$moveBackgroundLayerWhenAppIsVisible:Z

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$movedBackgroundLayer:Lkotlin/jvm/internal/Ref$BooleanRef;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$launchContainerOverlay:Landroid/view/ViewGroupOverlay;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$windowBackgroundLayer:Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$openingWindowSyncViewOverlay:Landroid/view/ViewOverlay;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$launchContainer:Landroid/view/ViewGroup;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$openingWindowSyncView:Landroid/view/View;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$controller:Lcom/android/systemui/animation/LaunchAnimator$Controller;

    move/from16 v1, p24

    iput-boolean v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$drawHole:Z

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endState:Lcom/android/systemui/animation/LaunchAnimator$State;

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endLeft:Lkotlin/jvm/internal/Ref$IntRef;

    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endRight:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 16
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 307
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$cancelled:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v1, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v1, :cond_0

    .line 310
    return-void

    .line 313
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endTop:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v3, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endState:Lcom/android/systemui/animation/LaunchAnimator$State;

    iget-object v4, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endBottom:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v5, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endLeft:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v6, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endRight:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v7, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endCenterX:Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v8, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endWidth:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-static/range {v2 .. v8}, Lcom/android/systemui/animation/LaunchAnimator;->access$startAnimation$maybeUpdateEndState(Lkotlin/jvm/internal/Ref$IntRef;Lcom/android/systemui/animation/LaunchAnimator$State;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$IntRef;)V

    .line 317
    invoke-virtual/range {p1 .. p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    .line 318
    .local v1, "linearProgress":F
    iget-object v2, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->this$0:Lcom/android/systemui/animation/LaunchAnimator;

    invoke-static {v2}, Lcom/android/systemui/animation/LaunchAnimator;->access$getInterpolators$p(Lcom/android/systemui/animation/LaunchAnimator;)Lcom/android/systemui/animation/LaunchAnimator$Interpolators;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/animation/LaunchAnimator$Interpolators;->getPositionInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 319
    .local v2, "progress":F
    iget-object v3, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->this$0:Lcom/android/systemui/animation/LaunchAnimator;

    invoke-static {v3}, Lcom/android/systemui/animation/LaunchAnimator;->access$getInterpolators$p(Lcom/android/systemui/animation/LaunchAnimator;)Lcom/android/systemui/animation/LaunchAnimator$Interpolators;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/animation/LaunchAnimator$Interpolators;->getPositionXInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    .line 321
    .local v3, "xProgress":F
    iget v4, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$startCenterX:F

    iget-object v5, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endCenterX:Lkotlin/jvm/internal/Ref$FloatRef;

    iget v5, v5, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-static {v4, v5, v3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v4

    .line 322
    .local v4, "xCenter":F
    iget v5, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$startWidth:I

    iget-object v6, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endWidth:Lkotlin/jvm/internal/Ref$IntRef;

    iget v6, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v5, v6, v2}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 324
    .local v5, "halfWidth":F
    iget-object v6, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$state:Lcom/android/systemui/animation/LaunchAnimator$State;

    iget v7, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$startTop:I

    iget-object v8, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endTop:Lkotlin/jvm/internal/Ref$IntRef;

    iget v8, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v7, v8, v2}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result v7

    invoke-static {v7}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/animation/LaunchAnimator$State;->setTop(I)V

    .line 325
    iget-object v6, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$state:Lcom/android/systemui/animation/LaunchAnimator$State;

    iget v7, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$startBottom:I

    iget-object v8, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endBottom:Lkotlin/jvm/internal/Ref$IntRef;

    iget v8, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v7, v8, v2}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result v7

    invoke-static {v7}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/animation/LaunchAnimator$State;->setBottom(I)V

    .line 326
    iget-object v6, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$state:Lcom/android/systemui/animation/LaunchAnimator$State;

    sub-float v7, v4, v5

    invoke-static {v7}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/animation/LaunchAnimator$State;->setLeft(I)V

    .line 327
    iget-object v6, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$state:Lcom/android/systemui/animation/LaunchAnimator$State;

    add-float v7, v4, v5

    invoke-static {v7}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/animation/LaunchAnimator$State;->setRight(I)V

    .line 329
    iget-object v6, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$state:Lcom/android/systemui/animation/LaunchAnimator$State;

    .line 330
    iget v7, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$startTopCornerRadius:F

    iget v8, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endTopCornerRadius:F

    invoke-static {v7, v8, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v7

    .line 329
    invoke-virtual {v6, v7}, Lcom/android/systemui/animation/LaunchAnimator$State;->setTopCornerRadius(F)V

    .line 331
    iget-object v6, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$state:Lcom/android/systemui/animation/LaunchAnimator$State;

    .line 332
    iget v7, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$startBottomCornerRadius:F

    iget v8, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$endBottomCornerRadius:F

    invoke-static {v7, v8, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v7

    .line 331
    invoke-virtual {v6, v7}, Lcom/android/systemui/animation/LaunchAnimator$State;->setBottomCornerRadius(F)V

    .line 336
    iget-object v6, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$state:Lcom/android/systemui/animation/LaunchAnimator$State;

    sget-object v9, Lcom/android/systemui/animation/LaunchAnimator;->Companion:Lcom/android/systemui/animation/LaunchAnimator$Companion;

    .line 337
    iget-object v7, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->this$0:Lcom/android/systemui/animation/LaunchAnimator;

    invoke-static {v7}, Lcom/android/systemui/animation/LaunchAnimator;->access$getTimings$p(Lcom/android/systemui/animation/LaunchAnimator;)Lcom/android/systemui/animation/LaunchAnimator$Timings;

    move-result-object v10

    .line 338
    nop

    .line 339
    iget-object v7, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->this$0:Lcom/android/systemui/animation/LaunchAnimator;

    invoke-static {v7}, Lcom/android/systemui/animation/LaunchAnimator;->access$getTimings$p(Lcom/android/systemui/animation/LaunchAnimator;)Lcom/android/systemui/animation/LaunchAnimator$Timings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/animation/LaunchAnimator$Timings;->getContentBeforeFadeOutDelay()J

    move-result-wide v12

    .line 340
    iget-object v7, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->this$0:Lcom/android/systemui/animation/LaunchAnimator;

    invoke-static {v7}, Lcom/android/systemui/animation/LaunchAnimator;->access$getTimings$p(Lcom/android/systemui/animation/LaunchAnimator;)Lcom/android/systemui/animation/LaunchAnimator$Timings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/animation/LaunchAnimator$Timings;->getContentBeforeFadeOutDuration()J

    move-result-wide v14

    .line 336
    move v11, v1

    invoke-virtual/range {v9 .. v15}, Lcom/android/systemui/animation/LaunchAnimator$Companion;->getProgress(Lcom/android/systemui/animation/LaunchAnimator$Timings;FJJ)F

    move-result v7

    .line 341
    const/high16 v8, 0x3f800000    # 1.0f

    cmpg-float v7, v7, v8

    const/4 v8, 0x1

    if-gez v7, :cond_1

    move v7, v8

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    .line 336
    :goto_0
    invoke-virtual {v6, v7}, Lcom/android/systemui/animation/LaunchAnimator$State;->setVisible(Z)V

    .line 343
    iget-boolean v6, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$moveBackgroundLayerWhenAppIsVisible:Z

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$state:Lcom/android/systemui/animation/LaunchAnimator$State;

    invoke-virtual {v6}, Lcom/android/systemui/animation/LaunchAnimator$State;->getVisible()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$movedBackgroundLayer:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v6, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v6, :cond_2

    .line 347
    iget-object v6, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$movedBackgroundLayer:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v8, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 349
    iget-object v6, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$launchContainerOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v7, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$windowBackgroundLayer:Landroid/graphics/drawable/GradientDrawable;

    check-cast v7, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroupOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 350
    iget-object v6, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$openingWindowSyncViewOverlay:Landroid/view/ViewOverlay;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v7, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$windowBackgroundLayer:Landroid/graphics/drawable/GradientDrawable;

    check-cast v7, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 352
    sget-object v6, Lcom/android/systemui/animation/ViewRootSync;->INSTANCE:Lcom/android/systemui/animation/ViewRootSync;

    iget-object v7, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$launchContainer:Landroid/view/ViewGroup;

    check-cast v7, Landroid/view/View;

    iget-object v8, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$openingWindowSyncView:Landroid/view/View;

    sget-object v9, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2$1;->INSTANCE:Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2$1;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/systemui/animation/ViewRootSync;->synchronizeNextDraw(Landroid/view/View;Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 355
    :cond_2
    iget-object v6, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$movedBackgroundLayer:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v6, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v6, :cond_3

    .line 356
    iget-object v6, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$openingWindowSyncView:Landroid/view/View;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v13, v6

    goto :goto_1

    .line 358
    :cond_3
    iget-object v6, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$controller:Lcom/android/systemui/animation/LaunchAnimator$Controller;

    invoke-interface {v6}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->getLaunchContainer()Landroid/view/ViewGroup;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    move-object v13, v6

    .line 355
    :goto_1
    nop

    .line 361
    .local v13, "container":Landroid/view/View;
    iget-object v9, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->this$0:Lcom/android/systemui/animation/LaunchAnimator;

    .line 362
    iget-object v10, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$windowBackgroundLayer:Landroid/graphics/drawable/GradientDrawable;

    .line 363
    iget-object v11, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$state:Lcom/android/systemui/animation/LaunchAnimator$State;

    .line 364
    nop

    .line 365
    nop

    .line 366
    iget-boolean v14, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$drawHole:Z

    .line 361
    move v12, v1

    invoke-static/range {v9 .. v14}, Lcom/android/systemui/animation/LaunchAnimator;->access$applyStateToWindowBackgroundLayer(Lcom/android/systemui/animation/LaunchAnimator;Landroid/graphics/drawable/GradientDrawable;Lcom/android/systemui/animation/LaunchAnimator$State;FLandroid/view/View;Z)V

    .line 368
    iget-object v6, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$controller:Lcom/android/systemui/animation/LaunchAnimator$Controller;

    iget-object v7, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$2;->$state:Lcom/android/systemui/animation/LaunchAnimator$State;

    invoke-interface {v6, v7, v2, v1}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->onLaunchAnimationProgress(Lcom/android/systemui/animation/LaunchAnimator$State;FF)V

    .line 369
    return-void
.end method
