.class public Lcom/android/launcher3/anim/PendingAnimation;
.super Lcom/android/launcher3/anim/AnimatedPropertySetter;
.source "PendingAnimation.java"


# instance fields
.field private final mAnimHolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/anim/AnimatorPlaybackController$Holder;",
            ">;"
        }
    .end annotation
.end field

.field private final mDuration:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "duration"    # J

    .line 45
    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimatedPropertySetter;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/anim/PendingAnimation;->mAnimHolders:Ljava/util/ArrayList;

    .line 46
    iput-wide p1, p0, Lcom/android/launcher3/anim/PendingAnimation;->mDuration:J

    .line 47
    return-void
.end method


# virtual methods
.method public add(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "anim"    # Landroid/animation/Animator;

    .line 63
    sget-object v0, Lcom/android/launcher3/anim/SpringProperty;->DEFAULT:Lcom/android/launcher3/anim/SpringProperty;

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;Lcom/android/launcher3/anim/SpringProperty;)V

    .line 64
    return-void
.end method

.method public add(Landroid/animation/Animator;Landroid/animation/TimeInterpolator;Lcom/android/launcher3/anim/SpringProperty;)V
    .locals 0
    .param p1, "anim"    # Landroid/animation/Animator;
    .param p2, "interpolator"    # Landroid/animation/TimeInterpolator;
    .param p3, "springProperty"    # Lcom/android/launcher3/anim/SpringProperty;

    .line 57
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 58
    invoke-virtual {p0, p1, p3}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;Lcom/android/launcher3/anim/SpringProperty;)V

    .line 59
    return-void
.end method

.method public add(Landroid/animation/Animator;Lcom/android/launcher3/anim/SpringProperty;)V
    .locals 3
    .param p1, "a"    # Landroid/animation/Animator;
    .param p2, "springProperty"    # Lcom/android/launcher3/anim/SpringProperty;

    .line 67
    iget-object v0, p0, Lcom/android/launcher3/anim/PendingAnimation;->mAnim:Landroid/animation/AnimatorSet;

    iget-wide v1, p0, Lcom/android/launcher3/anim/PendingAnimation;->mDuration:J

    invoke-virtual {p1, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 68
    iget-wide v0, p0, Lcom/android/launcher3/anim/PendingAnimation;->mDuration:J

    iget-object v2, p0, Lcom/android/launcher3/anim/PendingAnimation;->mAnimHolders:Ljava/util/ArrayList;

    invoke-static {p1, v0, v1, p2, v2}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->addAnimationHoldersRecur(Landroid/animation/Animator;JLcom/android/launcher3/anim/SpringProperty;Ljava/util/ArrayList;)V

    .line 69
    return-void
.end method

.method public addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V
    .locals 2
    .param p3, "from"    # F
    .param p4, "to"    # F
    .param p5, "interpolator"    # Landroid/animation/TimeInterpolator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/FloatProperty<",
            "TT;>;FF",
            "Landroid/animation/TimeInterpolator;",
            ")V"
        }
    .end annotation

    .line 80
    .local p1, "target":Ljava/lang/Object;, "TT;"
    .local p2, "property":Landroid/util/FloatProperty;, "Landroid/util/FloatProperty<TT;>;"
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    const/4 v1, 0x1

    aput p4, v0, v1

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 81
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {v0, p5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 82
    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    .line 83
    return-void
.end method

.method public buildAnim()Landroid/animation/AnimatorSet;
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/android/launcher3/anim/PendingAnimation;->mAnimHolders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/launcher3/anim/PendingAnimation;->mDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    .line 94
    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/anim/AnimatedPropertySetter;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;
    .locals 5

    .line 101
    new-instance v0, Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {p0}, Lcom/android/launcher3/anim/PendingAnimation;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/launcher3/anim/PendingAnimation;->mDuration:J

    iget-object v4, p0, Lcom/android/launcher3/anim/PendingAnimation;->mAnimHolders:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher3/anim/AnimatorPlaybackController;-><init>(Landroid/animation/AnimatorSet;JLjava/util/ArrayList;)V

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 50
    iget-wide v0, p0, Lcom/android/launcher3/anim/PendingAnimation;->mDuration:J

    return-wide v0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 1
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 75
    iget-object v0, p0, Lcom/android/launcher3/anim/PendingAnimation;->mAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 76
    return-void
.end method
