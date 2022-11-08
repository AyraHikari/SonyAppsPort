.class Lcom/android/quickstep/util/OverviewToHomeAnim$1;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source "OverviewToHomeAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/util/OverviewToHomeAnim;->animateWithVelocity(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/util/OverviewToHomeAnim;


# direct methods
.method constructor <init>(Lcom/android/quickstep/util/OverviewToHomeAnim;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/util/OverviewToHomeAnim;

    .line 68
    iput-object p1, p0, Lcom/android/quickstep/util/OverviewToHomeAnim$1;->this$0:Lcom/android/quickstep/util/OverviewToHomeAnim;

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 71
    iget-object v0, p0, Lcom/android/quickstep/util/OverviewToHomeAnim$1;->this$0:Lcom/android/quickstep/util/OverviewToHomeAnim;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/quickstep/util/OverviewToHomeAnim;->-$$Nest$fputmIsHomeStaggeredAnimFinished(Lcom/android/quickstep/util/OverviewToHomeAnim;Z)V

    .line 72
    iget-object v0, p0, Lcom/android/quickstep/util/OverviewToHomeAnim$1;->this$0:Lcom/android/quickstep/util/OverviewToHomeAnim;

    invoke-static {v0}, Lcom/android/quickstep/util/OverviewToHomeAnim;->-$$Nest$mmaybeOverviewToHomeAnimComplete(Lcom/android/quickstep/util/OverviewToHomeAnim;)V

    .line 73
    return-void
.end method
