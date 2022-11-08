.class Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$1;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source "HotseatPredictionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->fillGapsWithPrediction(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;

.field final synthetic val$animate:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;

    .line 184
    iput-object p1, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$1;->this$0:Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;

    iput-boolean p2, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$1;->val$animate:Z

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 187
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$1;->this$0:Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;

    iget-boolean v1, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$1;->val$animate:Z

    invoke-static {v0, v1}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->-$$Nest$mfillGapsWithPrediction(Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;Z)V

    .line 188
    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$1;->this$0:Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;

    invoke-static {v0}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->-$$Nest$fgetmIconRemoveAnimators(Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 189
    return-void
.end method
