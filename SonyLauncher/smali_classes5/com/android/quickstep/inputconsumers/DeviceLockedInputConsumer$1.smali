.class Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DeviceLockedInputConsumer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->finishTouchTracking(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;

.field final synthetic val$dismissTask:Z


# direct methods
.method constructor <init>(Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;

    .line 204
    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$1;->this$0:Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;

    iput-boolean p2, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$1;->val$dismissTask:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 207
    iget-boolean v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$1;->val$dismissTask:Z

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$1;->this$0:Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;

    invoke-static {v0}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->-$$Nest$fgetmContext(Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/Utilities;->createHomeIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 210
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$1;->this$0:Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->-$$Nest$fputmHomeLaunched(Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;Z)V

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$1;->this$0:Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;

    invoke-static {v0}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->-$$Nest$fgetmStateCallback(Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;)Lcom/android/quickstep/MultiStateCallback;

    move-result-object v0

    invoke-static {}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->-$$Nest$sfgetSTATE_HANDLER_INVALIDATED()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    .line 213
    return-void
.end method
