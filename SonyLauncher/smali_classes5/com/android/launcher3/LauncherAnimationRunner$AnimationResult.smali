.class public final Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;
.super Ljava/lang/Object;
.source "LauncherAnimationRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/LauncherAnimationRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnimationResult"
.end annotation


# instance fields
.field private final mASyncFinishRunnable:Ljava/lang/Runnable;

.field private mAnimator:Landroid/animation/AnimatorSet;

.field private mFinished:Z

.field private mInitialized:Z

.field private mOnCompleteCallback:Ljava/lang/Runnable;

.field private final mSyncFinishRunnable:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic -$$Nest$mfinish(Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->finish()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "syncFinishRunnable"    # Ljava/lang/Runnable;
    .param p2, "asyncFinishRunnable"    # Ljava/lang/Runnable;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mFinished:Z

    .line 151
    iput-boolean v0, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mInitialized:Z

    .line 154
    iput-object p1, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mSyncFinishRunnable:Ljava/lang/Runnable;

    .line 155
    iput-object p2, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mASyncFinishRunnable:Ljava/lang/Runnable;

    .line 156
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method private finish()V
    .locals 2

    .line 160
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mFinished:Z

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mSyncFinishRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 162
    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mFinished:Z

    .line 170
    :cond_0
    return-void
.end method


# virtual methods
.method synthetic lambda$finish$0$com-android-launcher3-LauncherAnimationRunner$AnimationResult()V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mASyncFinishRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 164
    iget-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mOnCompleteCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 165
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iget-object v1, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mOnCompleteCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 167
    :cond_0
    return-void
.end method

.method public setAnimation(Landroid/animation/AnimatorSet;Landroid/content/Context;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/AnimatorSet;
    .param p2, "context"    # Landroid/content/Context;

    .line 174
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->setAnimation(Landroid/animation/AnimatorSet;Landroid/content/Context;Ljava/lang/Runnable;Z)V

    .line 175
    return-void
.end method

.method public setAnimation(Landroid/animation/AnimatorSet;Landroid/content/Context;Ljava/lang/Runnable;Z)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/AnimatorSet;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "onCompleteCallback"    # Ljava/lang/Runnable;
    .param p4, "skipFirstFrame"    # Z

    .line 185
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mInitialized:Z

    if-nez v0, :cond_3

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mInitialized:Z

    .line 189
    iput-object p1, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mAnimator:Landroid/animation/AnimatorSet;

    .line 190
    iput-object p3, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mOnCompleteCallback:Ljava/lang/Runnable;

    .line 191
    if-nez p1, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->finish()V

    goto :goto_0

    .line 193
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mFinished:Z

    if-eqz v0, :cond_1

    .line 195
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 196
    iget-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 197
    iget-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mOnCompleteCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 198
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 202
    :cond_1
    new-instance v0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult$1;-><init>(Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 208
    iget-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 210
    if-eqz p4, :cond_2

    .line 213
    iget-object v0, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mAnimator:Landroid/animation/AnimatorSet;

    .line 214
    invoke-static {p2}, Lcom/android/launcher3/util/window/RefreshRateTracker;->getSingleFrameMs(Landroid/content/Context;)I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 213
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setCurrentPlayTime(J)V

    .line 217
    :cond_2
    :goto_0
    return-void

    .line 186
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Animation already initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
