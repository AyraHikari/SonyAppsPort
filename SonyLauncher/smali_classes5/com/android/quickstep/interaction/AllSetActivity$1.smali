.class Lcom/android/quickstep/interaction/AllSetActivity$1;
.super Ljava/lang/Object;
.source "AllSetActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/interaction/AllSetActivity;->startBackgroundAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/interaction/AllSetActivity;


# direct methods
.method constructor <init>(Lcom/android/quickstep/interaction/AllSetActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/interaction/AllSetActivity;

    .line 155
    iput-object p1, p0, Lcom/android/quickstep/interaction/AllSetActivity$1;->this$0:Lcom/android/quickstep/interaction/AllSetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onAnimationRepeat$1$com-android-quickstep-interaction-AllSetActivity$1()V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity$1;->this$0:Lcom/android/quickstep/interaction/AllSetActivity;

    invoke-static {v0}, Lcom/android/quickstep/interaction/AllSetActivity;->-$$Nest$fgetmVibrator(Lcom/android/quickstep/interaction/AllSetActivity;)Landroid/os/Vibrator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/interaction/AllSetActivity$1;->this$0:Lcom/android/quickstep/interaction/AllSetActivity;

    invoke-static {v1}, Lcom/android/quickstep/interaction/AllSetActivity;->-$$Nest$mgetVibrationEffect(Lcom/android/quickstep/interaction/AllSetActivity;)Landroid/os/VibrationEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    return-void
.end method

.method synthetic lambda$onAnimationStart$0$com-android-quickstep-interaction-AllSetActivity$1()V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity$1;->this$0:Lcom/android/quickstep/interaction/AllSetActivity;

    invoke-static {v0}, Lcom/android/quickstep/interaction/AllSetActivity;->-$$Nest$fgetmVibrator(Lcom/android/quickstep/interaction/AllSetActivity;)Landroid/os/Vibrator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/interaction/AllSetActivity$1;->this$0:Lcom/android/quickstep/interaction/AllSetActivity;

    invoke-static {v1}, Lcom/android/quickstep/interaction/AllSetActivity;->-$$Nest$mgetVibrationEffect(Lcom/android/quickstep/interaction/AllSetActivity;)Landroid/os/VibrationEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 173
    iget-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity$1;->this$0:Lcom/android/quickstep/interaction/AllSetActivity;

    invoke-static {v0}, Lcom/android/quickstep/interaction/AllSetActivity;->-$$Nest$fgetmVibrator(Lcom/android/quickstep/interaction/AllSetActivity;)Landroid/os/Vibrator;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/quickstep/interaction/AllSetActivity$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/android/quickstep/interaction/AllSetActivity$1$$ExternalSyntheticLambda1;-><init>(Landroid/os/Vibrator;)V

    invoke-static {v0, v2}, Lcom/android/quickstep/interaction/AllSetActivity;->-$$Nest$mrunOnUiHelperThread(Lcom/android/quickstep/interaction/AllSetActivity;Ljava/lang/Runnable;)V

    .line 174
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 168
    iget-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity$1;->this$0:Lcom/android/quickstep/interaction/AllSetActivity;

    invoke-static {v0}, Lcom/android/quickstep/interaction/AllSetActivity;->-$$Nest$fgetmVibrator(Lcom/android/quickstep/interaction/AllSetActivity;)Landroid/os/Vibrator;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/quickstep/interaction/AllSetActivity$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/android/quickstep/interaction/AllSetActivity$1$$ExternalSyntheticLambda1;-><init>(Landroid/os/Vibrator;)V

    invoke-static {v0, v2}, Lcom/android/quickstep/interaction/AllSetActivity;->-$$Nest$mrunOnUiHelperThread(Lcom/android/quickstep/interaction/AllSetActivity;Ljava/lang/Runnable;)V

    .line 169
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 163
    iget-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity$1;->this$0:Lcom/android/quickstep/interaction/AllSetActivity;

    new-instance v1, Lcom/android/quickstep/interaction/AllSetActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/quickstep/interaction/AllSetActivity$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/interaction/AllSetActivity$1;)V

    invoke-static {v0, v1}, Lcom/android/quickstep/interaction/AllSetActivity;->-$$Nest$mrunOnUiHelperThread(Lcom/android/quickstep/interaction/AllSetActivity;Ljava/lang/Runnable;)V

    .line 164
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 158
    iget-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity$1;->this$0:Lcom/android/quickstep/interaction/AllSetActivity;

    new-instance v1, Lcom/android/quickstep/interaction/AllSetActivity$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/quickstep/interaction/AllSetActivity$1$$ExternalSyntheticLambda2;-><init>(Lcom/android/quickstep/interaction/AllSetActivity$1;)V

    invoke-static {v0, v1}, Lcom/android/quickstep/interaction/AllSetActivity;->-$$Nest$mrunOnUiHelperThread(Lcom/android/quickstep/interaction/AllSetActivity;Ljava/lang/Runnable;)V

    .line 159
    return-void
.end method
