.class Lcom/android/launcher3/anim/AnimatorPlaybackController$Holder;
.super Ljava/lang/Object;
.source "AnimatorPlaybackController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/anim/AnimatorPlaybackController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Holder"
.end annotation


# instance fields
.field public final anim:Landroid/animation/ValueAnimator;

.field public final globalEndProgress:F

.field public final interpolator:Landroid/animation/TimeInterpolator;

.field public mapper:Lcom/android/launcher3/anim/AnimatorPlaybackController$ProgressMapper;

.field public final springProperty:Lcom/android/launcher3/anim/SpringProperty;


# direct methods
.method constructor <init>(Landroid/animation/Animator;FLcom/android/launcher3/anim/SpringProperty;)V
    .locals 2
    .param p1, "anim"    # Landroid/animation/Animator;
    .param p2, "globalDuration"    # F
    .param p3, "springProperty"    # Lcom/android/launcher3/anim/SpringProperty;

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    move-object v0, p1

    check-cast v0, Landroid/animation/ValueAnimator;

    iput-object v0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController$Holder;->anim:Landroid/animation/ValueAnimator;

    .line 379
    iput-object p3, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController$Holder;->springProperty:Lcom/android/launcher3/anim/SpringProperty;

    .line 380
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController$Holder;->interpolator:Landroid/animation/TimeInterpolator;

    .line 381
    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    long-to-float v0, v0

    div-float/2addr v0, p2

    iput v0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController$Holder;->globalEndProgress:F

    .line 382
    sget-object v0, Lcom/android/launcher3/anim/AnimatorPlaybackController$ProgressMapper;->DEFAULT:Lcom/android/launcher3/anim/AnimatorPlaybackController$ProgressMapper;

    iput-object v0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController$Holder;->mapper:Lcom/android/launcher3/anim/AnimatorPlaybackController$ProgressMapper;

    .line 383
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    .line 390
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController$Holder;->anim:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController$Holder;->interpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 391
    sget-object v0, Lcom/android/launcher3/anim/AnimatorPlaybackController$ProgressMapper;->DEFAULT:Lcom/android/launcher3/anim/AnimatorPlaybackController$ProgressMapper;

    iput-object v0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController$Holder;->mapper:Lcom/android/launcher3/anim/AnimatorPlaybackController$ProgressMapper;

    .line 392
    return-void
.end method

.method public setProgress(F)V
    .locals 3
    .param p1, "progress"    # F

    .line 386
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController$Holder;->anim:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController$Holder;->mapper:Lcom/android/launcher3/anim/AnimatorPlaybackController$ProgressMapper;

    iget v2, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController$Holder;->globalEndProgress:F

    invoke-interface {v1, p1, v2}, Lcom/android/launcher3/anim/AnimatorPlaybackController$ProgressMapper;->getProgress(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    .line 387
    return-void
.end method
