.class public Lcom/android/launcher3/anim/AnimatorPlaybackController;
.super Ljava/lang/Object;
.source "AnimatorPlaybackController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/anim/AnimatorPlaybackController$Holder;,
        Lcom/android/launcher3/anim/AnimatorPlaybackController$ProgressMapper;,
        Lcom/android/launcher3/anim/AnimatorPlaybackController$OnAnimationEndDispatcher;
    }
.end annotation


# static fields
.field private static final ANIMATION_COMPLETE_THRESHOLD:F = 0.95f


# instance fields
.field private final mAnim:Landroid/animation/AnimatorSet;

.field private final mAnimationPlayer:Landroid/animation/ValueAnimator;

.field private final mChildAnimations:[Lcom/android/launcher3/anim/AnimatorPlaybackController$Holder;

.field protected mCurrentFraction:F

.field private final mDuration:J

.field private mEndAction:Ljava/lang/Runnable;

.field protected mTargetCancelled:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmEndAction(Lcom/android/launcher3/anim/AnimatorPlaybackController;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mEndAction:Ljava/lang/Runnable;

    return-object p0
.end method

.method constructor <init>(Landroid/animation/AnimatorSet;JLjava/util/ArrayList;)V
    .locals 3
    .param p1, "anim"    # Landroid/animation/AnimatorSet;
    .param p2, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/AnimatorSet;",
            "J",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/anim/AnimatorPlaybackController$Holder;",
            ">;)V"
        }
    .end annotation

    .line 77
    .local p4, "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/anim/AnimatorPlaybackController$Holder;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mTargetCancelled:Z

    .line 78
    iput-object p1, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mAnim:Landroid/animation/AnimatorSet;

    .line 79
    iput-wide p2, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mDuration:J

    .line 81
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mAnimationPlayer:Landroid/animation/ValueAnimator;

    .line 82
    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 83
    new-instance v1, Lcom/android/launcher3/anim/AnimatorPlaybackController$OnAnimationEndDispatcher;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/anim/AnimatorPlaybackController$OnAnimationEndDispatcher;-><init>(Lcom/android/launcher3/anim/AnimatorPlaybackController;Lcom/android/launcher3/anim/AnimatorPlaybackController$OnAnimationEndDispatcher-IA;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 84
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 86
    new-instance v0, Lcom/android/launcher3/anim/AnimatorPlaybackController$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/anim/AnimatorPlaybackController$1;-><init>(Lcom/android/launcher3/anim/AnimatorPlaybackController;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 103
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/launcher3/anim/AnimatorPlaybackController$Holder;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/anim/AnimatorPlaybackController$Holder;

    iput-object v0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mChildAnimations:[Lcom/android/launcher3/anim/AnimatorPlaybackController$Holder;

    .line 104
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static addAnimationHoldersRecur(Landroid/animation/Animator;JLcom/android/launcher3/anim/SpringProperty;Ljava/util/ArrayList;)V
    .locals 7
    .param p0, "anim"    # Landroid/animation/Animator;
    .param p1, "globalDuration"    # J
    .param p3, "springProperty"    # Lcom/android/launcher3/anim/SpringProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            "J",
            "Lcom/android/launcher3/anim/SpringProperty;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/anim/AnimatorPlaybackController$Holder;",
            ">;)V"
        }
    .end annotation

    .line 397
    .local p4, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/anim/AnimatorPlaybackController$Holder;>;"
    invoke-virtual {p0}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    .line 398
    .local v0, "forceDuration":J
    invoke-virtual {p0}, Landroid/animation/Animator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v2

    .line 399
    .local v2, "forceInterpolator":Landroid/animation/TimeInterpolator;
    instance-of v3, p0, Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_0

    .line 400
    new-instance v3, Lcom/android/launcher3/anim/AnimatorPlaybackController$Holder;

    long-to-float v4, p1

    invoke-direct {v3, p0, v4, p3}, Lcom/android/launcher3/anim/AnimatorPlaybackController$Holder;-><init>(Landroid/animation/Animator;FLcom/android/launcher3/anim/SpringProperty;)V

    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 401
    :cond_0
    instance-of v3, p0, Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_4

    .line 402
    move-object v3, p0

    check-cast v3, Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    .line 403
    .local v4, "child":Landroid/animation/Animator;
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-lez v5, :cond_1

    .line 404
    invoke-virtual {v4, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 406
    :cond_1
    if-eqz v2, :cond_2

    .line 407
    invoke-virtual {v4, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 409
    :cond_2
    invoke-static {v4, p1, p2, p3, p4}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->addAnimationHoldersRecur(Landroid/animation/Animator;JLcom/android/launcher3/anim/SpringProperty;Ljava/util/ArrayList;)V

    .line 410
    .end local v4    # "child":Landroid/animation/Animator;
    goto :goto_0

    :cond_3
    nop

    .line 414
    :goto_1
    return-void

    .line 412
    :cond_4
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown animation type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static callAnimatorCommandRecursively(Landroid/animation/Animator;Ljava/util/function/Consumer;)V
    .locals 2
    .param p0, "anim"    # Landroid/animation/Animator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            "Ljava/util/function/Consumer<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 313
    .local p1, "command":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/animation/Animator;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 314
    instance-of v0, p0, Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 315
    move-object v0, p0

    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->nonNullList(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 316
    .local v1, "child":Landroid/animation/Animator;
    invoke-static {v1, p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->callAnimatorCommandRecursively(Landroid/animation/Animator;Ljava/util/function/Consumer;)V

    .line 317
    .end local v1    # "child":Landroid/animation/Animator;
    goto :goto_0

    .line 319
    :cond_0
    return-void
.end method

.method public static callListenerCommandRecursively(Landroid/animation/Animator;Ljava/util/function/BiConsumer;)V
    .locals 1
    .param p0, "anim"    # Landroid/animation/Animator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            "Ljava/util/function/BiConsumer<",
            "Landroid/animation/Animator$AnimatorListener;",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 305
    .local p1, "command":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Landroid/animation/Animator$AnimatorListener;Landroid/animation/Animator;>;"
    new-instance v0, Lcom/android/launcher3/anim/AnimatorPlaybackController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/BiConsumer;)V

    invoke-static {p0, v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->callAnimatorCommandRecursively(Landroid/animation/Animator;Ljava/util/function/Consumer;)V

    .line 310
    return-void
.end method

.method static synthetic lambda$callListenerCommandRecursively$2(Ljava/util/function/BiConsumer;Landroid/animation/Animator;)V
    .locals 2
    .param p0, "command"    # Ljava/util/function/BiConsumer;
    .param p1, "a"    # Landroid/animation/Animator;

    .line 306
    invoke-virtual {p1}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->nonNullList(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 307
    .local v1, "l":Landroid/animation/Animator$AnimatorListener;
    invoke-interface {p0, v1, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 308
    .end local v1    # "l":Landroid/animation/Animator$AnimatorListener;
    goto :goto_0

    .line 309
    :cond_0
    return-void
.end method

.method static synthetic lambda$dispatchSetInterpolator$1(Landroid/animation/TimeInterpolator;Landroid/animation/Animator;)V
    .locals 0
    .param p0, "interpolator"    # Landroid/animation/TimeInterpolator;
    .param p1, "a"    # Landroid/animation/Animator;

    .line 297
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method private static nonNullList(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 348
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static wrap(Landroid/animation/AnimatorSet;J)Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .locals 2
    .param p0, "anim"    # Landroid/animation/AnimatorSet;
    .param p1, "duration"    # J

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v0, "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/anim/AnimatorPlaybackController$Holder;>;"
    sget-object v1, Lcom/android/launcher3/anim/SpringProperty;->DEFAULT:Lcom/android/launcher3/anim/SpringProperty;

    invoke-static {p0, p1, p2, v1, v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->addAnimationHoldersRecur(Landroid/animation/Animator;JLcom/android/launcher3/anim/SpringProperty;Ljava/util/ArrayList;)V

    .line 59
    new-instance v1, Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;-><init>(Landroid/animation/AnimatorSet;JLjava/util/ArrayList;)V

    return-object v1
.end method


# virtual methods
.method protected clampDuration(F)J
    .locals 5
    .param p1, "fraction"    # F

    .line 273
    iget-wide v0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mDuration:J

    long-to-float v2, v0

    mul-float/2addr v2, p1

    .line 274
    .local v2, "playPos":F
    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_0

    .line 275
    const-wide/16 v0, 0x0

    return-wide v0

    .line 277
    :cond_0
    float-to-long v3, v2

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public dispatchOnCancel()Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mAnim:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/launcher3/anim/AnimatorPlaybackController$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v0, v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->callListenerCommandRecursively(Landroid/animation/Animator;Ljava/util/function/BiConsumer;)V

    .line 288
    return-object p0
.end method

.method public dispatchOnEnd()Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mAnim:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/launcher3/anim/AnimatorPlaybackController$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0, v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->callListenerCommandRecursively(Landroid/animation/Animator;Ljava/util/function/BiConsumer;)V

    .line 293
    return-object p0
.end method

.method public dispatchOnStart()Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mAnim:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/launcher3/anim/AnimatorPlaybackController$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->callListenerCommandRecursively(Landroid/animation/Animator;Ljava/util/function/BiConsumer;)V

    .line 283
    return-object p0
.end method

.method public dispatchSetInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 2
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 297
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mAnim:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/launcher3/anim/AnimatorPlaybackController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController$$ExternalSyntheticLambda0;-><init>(Landroid/animation/TimeInterpolator;)V

    invoke-static {v0, v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->callAnimatorCommandRecursively(Landroid/animation/Animator;Ljava/util/function/Consumer;)V

    .line 298
    return-void
.end method

.method public forceFinishIfCloseToEnd()V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mAnimationPlayer:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mAnimationPlayer:Landroid/animation/ValueAnimator;

    .line 212
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    const v1, 0x3f733333    # 0.95f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mAnimationPlayer:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 215
    :cond_0
    return-void
.end method

.method public getAnimationPlayer()Landroid/animation/ValueAnimator;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mAnimationPlayer:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 111
    iget-wide v0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mDuration:J

    return-wide v0
.end method

.method public getInterpolatedProgress()F
    .locals 2

    .line 256
    invoke-virtual {p0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mCurrentFraction:F

    invoke-interface {v0, v1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    :goto_0
    return-object v0
.end method

.method public getProgressFraction()F
    .locals 1

    .line 252
    iget v0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mCurrentFraction:F

    return v0
.end method

.method public getTarget()Landroid/animation/AnimatorSet;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mAnim:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method synthetic lambda$startWithVelocity$0$com-android-launcher3-anim-AnimatorPlaybackController(FFFF)F
    .locals 7
    .param p1, "expectedDuration"    # F
    .param p2, "oneFrameProgress"    # F
    .param p3, "progress"    # F
    .param p4, "globalEndProgress"    # F

    .line 175
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-lez v0, :cond_1

    cmpl-float v0, p2, v1

    if-ltz v0, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mAnimationPlayer:Landroid/animation/ValueAnimator;

    .line 180
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    long-to-float v0, v0

    div-float v1, v0, p1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 182
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 179
    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v0

    return v0

    .line 176
    :cond_1
    :goto_0
    return v1
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 269
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->setPlayFraction(F)V

    .line 270
    return-void
.end method

.method public pause()V
    .locals 4

    .line 222
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mChildAnimations:[Lcom/android/launcher3/anim/AnimatorPlaybackController$Holder;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 223
    .local v3, "h":Lcom/android/launcher3/anim/AnimatorPlaybackController$Holder;
    invoke-virtual {v3}, Lcom/android/launcher3/anim/AnimatorPlaybackController$Holder;->reset()V

    .line 222
    .end local v3    # "h":Lcom/android/launcher3/anim/AnimatorPlaybackController$Holder;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mAnimationPlayer:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 226
    return-void
.end method

.method public reverse()V
    .locals 4

    .line 131
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mAnimationPlayer:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mCurrentFraction:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 132
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mAnimationPlayer:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mCurrentFraction:F

    invoke-virtual {p0, v1}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->clampDuration(F)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 133
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mAnimationPlayer:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 134
    return-void
.end method

.method public setEndAction(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 264
    iput-object p1, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mEndAction:Ljava/lang/Runnable;

    .line 265
    return-void
.end method

.method public setPlayFraction(F)V
    .locals 5
    .param p1, "fraction"    # F

    .line 239
    iput p1, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mCurrentFraction:F

    .line 242
    iget-boolean v0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mTargetCancelled:Z

    if-eqz v0, :cond_0

    .line 243
    return-void

    .line 245
    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v0

    .line 246
    .local v0, "progress":F
    iget-object v1, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mChildAnimations:[Lcom/android/launcher3/anim/AnimatorPlaybackController$Holder;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 247
    .local v4, "holder":Lcom/android/launcher3/anim/AnimatorPlaybackController$Holder;
    invoke-virtual {v4, v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController$Holder;->setProgress(F)V

    .line 246
    .end local v4    # "holder":Lcom/android/launcher3/anim/AnimatorPlaybackController$Holder;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 249
    :cond_1
    return-void
.end method

.method public start()V
    .locals 4

    .line 122
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mAnimationPlayer:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mCurrentFraction:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 123
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mAnimationPlayer:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mCurrentFraction:F

    sub-float/2addr v3, v1

    invoke-virtual {p0, v3}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->clampDuration(F)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 124
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mAnimationPlayer:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 125
    return-void
.end method

.method public startWithVelocity(Landroid/content/Context;ZFFJ)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "goingToEnd"    # Z
    .param p3, "velocityPxPerMs"    # F
    .param p4, "endDistance"    # F
    .param p5, "animationDuration"    # J

    .line 146
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v3, v4, v3

    .line 147
    .local v3, "distanceInverse":F
    mul-float v5, p3, v3

    .line 149
    .local v5, "velocityProgressPerMs":F
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/util/window/RefreshRateTracker;->getSingleFrameMs(Landroid/content/Context;)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    .line 150
    .local v6, "oneFrameProgress":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getProgressFraction()F

    move-result v7

    add-float/2addr v7, v6

    const/4 v8, 0x0

    invoke-static {v7, v8, v4}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v7

    .line 154
    .local v7, "nextFrameProgress":F
    if-eqz p2, :cond_0

    .line 155
    const/4 v11, 0x1

    goto :goto_0

    .line 156
    :cond_0
    const/4 v11, 0x2

    :goto_0
    nop

    .line 158
    .local v11, "springFlag":I
    move-wide/from16 v12, p5

    .line 159
    .local v12, "springDuration":J
    iget-object v14, v0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mChildAnimations:[Lcom/android/launcher3/anim/AnimatorPlaybackController$Holder;

    array-length v15, v14

    const/16 v16, 0x0

    move/from16 v4, v16

    :goto_1
    if-ge v4, v15, :cond_3

    aget-object v8, v14, v4

    .line 160
    .local v8, "h":Lcom/android/launcher3/anim/AnimatorPlaybackController$Holder;
    iget-object v10, v8, Lcom/android/launcher3/anim/AnimatorPlaybackController$Holder;->springProperty:Lcom/android/launcher3/anim/SpringProperty;

    iget v10, v10, Lcom/android/launcher3/anim/SpringProperty;->flags:I

    and-int/2addr v10, v11

    if-eqz v10, :cond_2

    .line 161
    new-instance v10, Lcom/android/launcher3/anim/SpringAnimationBuilder;

    move-object/from16 v9, p1

    invoke-direct {v10, v9}, Lcom/android/launcher3/anim/SpringAnimationBuilder;-><init>(Landroid/content/Context;)V

    iget v9, v0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mCurrentFraction:F

    .line 162
    invoke-virtual {v10, v9}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->setStartValue(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;

    move-result-object v9

    .line 163
    if-eqz p2, :cond_1

    const/high16 v10, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_1
    const/4 v10, 0x0

    :goto_2
    invoke-virtual {v9, v10}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->setEndValue(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;

    move-result-object v9

    .line 164
    invoke-virtual {v9, v5}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->setStartVelocity(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;

    move-result-object v9

    .line 165
    invoke-virtual {v9, v3}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->setMinimumVisibleChange(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;

    move-result-object v9

    iget-object v10, v8, Lcom/android/launcher3/anim/AnimatorPlaybackController$Holder;->springProperty:Lcom/android/launcher3/anim/SpringProperty;

    iget v10, v10, Lcom/android/launcher3/anim/SpringProperty;->mDampingRatio:F

    .line 166
    invoke-virtual {v9, v10}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->setDampingRatio(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;

    move-result-object v9

    iget-object v10, v8, Lcom/android/launcher3/anim/AnimatorPlaybackController$Holder;->springProperty:Lcom/android/launcher3/anim/SpringProperty;

    iget v10, v10, Lcom/android/launcher3/anim/SpringProperty;->mStiffness:F

    .line 167
    invoke-virtual {v9, v10}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->setStiffness(F)Lcom/android/launcher3/anim/SpringAnimationBuilder;

    move-result-object v9

    .line 168
    invoke-virtual {v9}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->computeParams()Lcom/android/launcher3/anim/SpringAnimationBuilder;

    move-result-object v9

    .line 170
    .local v9, "s":Lcom/android/launcher3/anim/SpringAnimationBuilder;
    move/from16 v18, v11

    .end local v11    # "springFlag":I
    .local v18, "springFlag":I
    invoke-virtual {v9}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->getDuration()J

    move-result-wide v10

    .line 171
    .local v10, "expectedDurationL":J
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 173
    move/from16 v19, v3

    .end local v3    # "distanceInverse":F
    .local v19, "distanceInverse":F
    long-to-float v3, v10

    .line 174
    .local v3, "expectedDuration":F
    move/from16 v20, v5

    .end local v5    # "velocityProgressPerMs":F
    .local v20, "velocityProgressPerMs":F
    new-instance v5, Lcom/android/launcher3/anim/AnimatorPlaybackController$$ExternalSyntheticLambda5;

    invoke-direct {v5, v0, v3, v6}, Lcom/android/launcher3/anim/AnimatorPlaybackController$$ExternalSyntheticLambda5;-><init>(Lcom/android/launcher3/anim/AnimatorPlaybackController;FF)V

    iput-object v5, v8, Lcom/android/launcher3/anim/AnimatorPlaybackController$Holder;->mapper:Lcom/android/launcher3/anim/AnimatorPlaybackController$ProgressMapper;

    .line 186
    iget-object v5, v8, Lcom/android/launcher3/anim/AnimatorPlaybackController$Holder;->anim:Landroid/animation/ValueAnimator;

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v21, v3

    .end local v3    # "expectedDuration":F
    .local v21, "expectedDuration":F
    new-instance v3, Lcom/android/launcher3/anim/AnimatorPlaybackController$$ExternalSyntheticLambda6;

    invoke-direct {v3, v9}, Lcom/android/launcher3/anim/AnimatorPlaybackController$$ExternalSyntheticLambda6;-><init>(Lcom/android/launcher3/anim/SpringAnimationBuilder;)V

    invoke-virtual {v5, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_3

    .line 160
    .end local v9    # "s":Lcom/android/launcher3/anim/SpringAnimationBuilder;
    .end local v10    # "expectedDurationL":J
    .end local v18    # "springFlag":I
    .end local v19    # "distanceInverse":F
    .end local v20    # "velocityProgressPerMs":F
    .end local v21    # "expectedDuration":F
    .local v3, "distanceInverse":F
    .restart local v5    # "velocityProgressPerMs":F
    .restart local v11    # "springFlag":I
    :cond_2
    move/from16 v19, v3

    move/from16 v20, v5

    move/from16 v18, v11

    .line 159
    .end local v3    # "distanceInverse":F
    .end local v5    # "velocityProgressPerMs":F
    .end local v8    # "h":Lcom/android/launcher3/anim/AnimatorPlaybackController$Holder;
    .end local v11    # "springFlag":I
    .restart local v18    # "springFlag":I
    .restart local v19    # "distanceInverse":F
    .restart local v20    # "velocityProgressPerMs":F
    :goto_3
    add-int/lit8 v4, v4, 0x1

    move/from16 v11, v18

    move/from16 v3, v19

    move/from16 v5, v20

    const/4 v8, 0x0

    goto :goto_1

    .line 190
    .end local v18    # "springFlag":I
    .end local v19    # "distanceInverse":F
    .end local v20    # "velocityProgressPerMs":F
    .restart local v3    # "distanceInverse":F
    .restart local v5    # "velocityProgressPerMs":F
    .restart local v11    # "springFlag":I
    :cond_3
    move/from16 v19, v3

    move/from16 v20, v5

    move/from16 v18, v11

    .end local v3    # "distanceInverse":F
    .end local v5    # "velocityProgressPerMs":F
    .end local v11    # "springFlag":I
    .restart local v18    # "springFlag":I
    .restart local v19    # "distanceInverse":F
    .restart local v20    # "velocityProgressPerMs":F
    iget-object v3, v0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mAnimationPlayer:Landroid/animation/ValueAnimator;

    const/4 v4, 0x2

    new-array v4, v4, [F

    aput v7, v4, v16

    if-eqz p2, :cond_4

    const/high16 v17, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_4
    const/16 v17, 0x0

    :goto_4
    const/4 v5, 0x1

    aput v17, v4, v5

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 192
    cmp-long v3, v12, v1

    if-gtz v3, :cond_5

    .line 193
    iget-object v3, v0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mAnimationPlayer:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 194
    iget-object v3, v0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mAnimationPlayer:Landroid/animation/ValueAnimator;

    invoke-static/range {p3 .. p3}, Lcom/android/launcher3/anim/Interpolators;->scrollInterpolatorForVelocity(F)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_5

    .line 198
    :cond_5
    iget-object v3, v0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mAnimationPlayer:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 200
    long-to-float v3, v1

    long-to-float v4, v12

    div-float/2addr v3, v4

    .line 201
    .local v3, "cutOff":F
    iget-object v4, v0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mAnimationPlayer:Landroid/animation/ValueAnimator;

    .line 202
    invoke-static/range {p3 .. p3}, Lcom/android/launcher3/anim/Interpolators;->scrollInterpolatorForVelocity(F)Landroid/view/animation/Interpolator;

    move-result-object v5

    const/4 v8, 0x0

    invoke-static {v5, v8, v3}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v5

    .line 201
    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 204
    .end local v3    # "cutOff":F
    :goto_5
    iget-object v3, v0, Lcom/android/launcher3/anim/AnimatorPlaybackController;->mAnimationPlayer:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 205
    return-void
.end method
