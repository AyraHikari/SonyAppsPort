.class Lcom/android/quickstep/RecentsActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "RecentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/RecentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/RecentsActivity;


# direct methods
.method constructor <init>(Lcom/android/quickstep/RecentsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/RecentsActivity;

    .line 505
    iput-object p1, p0, Lcom/android/quickstep/RecentsActivity$4;->this$0:Lcom/android/quickstep/RecentsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 508
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 509
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 511
    iget-object v1, p0, Lcom/android/quickstep/RecentsActivity$4;->this$0:Lcom/android/quickstep/RecentsActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/quickstep/RecentsActivity;->moveTaskToBack(Z)Z

    .line 513
    :cond_0
    return-void
.end method
