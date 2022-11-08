.class Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim$2;
.super Ljava/lang/Object;
.source "SwipeUpAnimationLogic.java"

# interfaces
.implements Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;->wrap(Lcom/android/quickstep/util/RectFSpringAnim;)Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$rectFSpringAnim:Lcom/android/quickstep/util/RectFSpringAnim;


# direct methods
.method constructor <init>(Lcom/android/quickstep/util/RectFSpringAnim;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim$2;->val$rectFSpringAnim:Lcom/android/quickstep/util/RectFSpringAnim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim$2;->val$rectFSpringAnim:Lcom/android/quickstep/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/android/quickstep/util/RectFSpringAnim;->cancel()V

    .line 393
    return-void
.end method

.method public end()V
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim$2;->val$rectFSpringAnim:Lcom/android/quickstep/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/android/quickstep/util/RectFSpringAnim;->end()V

    .line 388
    return-void
.end method
