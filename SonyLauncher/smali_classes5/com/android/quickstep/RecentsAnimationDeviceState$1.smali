.class Lcom/android/quickstep/RecentsAnimationDeviceState$1;
.super Landroid/content/BroadcastReceiver;
.source "RecentsAnimationDeviceState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/RecentsAnimationDeviceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/RecentsAnimationDeviceState;


# direct methods
.method constructor <init>(Lcom/android/quickstep/RecentsAnimationDeviceState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/RecentsAnimationDeviceState;

    .line 123
    iput-object p1, p0, Lcom/android/quickstep/RecentsAnimationDeviceState$1;->this$0:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 126
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState$1;->this$0:Lcom/android/quickstep/RecentsAnimationDeviceState;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->-$$Nest$fputmIsUserUnlocked(Lcom/android/quickstep/RecentsAnimationDeviceState;Z)V

    .line 128
    iget-object v0, p0, Lcom/android/quickstep/RecentsAnimationDeviceState$1;->this$0:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-static {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->-$$Nest$mnotifyUserUnlocked(Lcom/android/quickstep/RecentsAnimationDeviceState;)V

    .line 130
    :cond_0
    return-void
.end method
