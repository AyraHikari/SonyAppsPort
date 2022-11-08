.class Lcom/android/launcher3/anim/AnimatorPlaybackController$OnAnimationEndDispatcher;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source "AnimatorPlaybackController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/anim/AnimatorPlaybackController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnAnimationEndDispatcher"
.end annotation


# instance fields
.field mDispatched:Z

.field final synthetic this$0:Lcom/android/launcher3/anim/AnimatorPlaybackController;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/anim/AnimatorPlaybackController;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController$OnAnimationEndDispatcher;->this$0:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    .line 326
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController$OnAnimationEndDispatcher;->mDispatched:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/anim/AnimatorPlaybackController;Lcom/android/launcher3/anim/AnimatorPlaybackController$OnAnimationEndDispatcher-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/anim/AnimatorPlaybackController$OnAnimationEndDispatcher;-><init>(Lcom/android/launcher3/anim/AnimatorPlaybackController;)V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 330
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController$OnAnimationEndDispatcher;->mCancelled:Z

    .line 331
    iput-boolean v0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController$OnAnimationEndDispatcher;->mDispatched:Z

    .line 332
    return-void
.end method

.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 337
    iget-boolean v0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController$OnAnimationEndDispatcher;->mDispatched:Z

    if-nez v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController$OnAnimationEndDispatcher;->this$0:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnEnd()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 339
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController$OnAnimationEndDispatcher;->this$0:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-static {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->-$$Nest$fgetmEndAction(Lcom/android/launcher3/anim/AnimatorPlaybackController;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController$OnAnimationEndDispatcher;->this$0:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-static {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->-$$Nest$fgetmEndAction(Lcom/android/launcher3/anim/AnimatorPlaybackController;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 342
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController$OnAnimationEndDispatcher;->mDispatched:Z

    .line 344
    :cond_1
    return-void
.end method
