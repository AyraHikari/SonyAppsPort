.class Lcom/android/launcher3/settings/DeveloperOptionsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "DeveloperOptionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/settings/DeveloperOptionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/settings/DeveloperOptionsFragment;


# direct methods
.method constructor <init>(Lcom/android/launcher3/settings/DeveloperOptionsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/settings/DeveloperOptionsFragment;

    .line 85
    iput-object p1, p0, Lcom/android/launcher3/settings/DeveloperOptionsFragment$1;->this$0:Lcom/android/launcher3/settings/DeveloperOptionsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 88
    iget-object v0, p0, Lcom/android/launcher3/settings/DeveloperOptionsFragment$1;->this$0:Lcom/android/launcher3/settings/DeveloperOptionsFragment;

    invoke-static {v0}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->-$$Nest$mloadPluginPrefs(Lcom/android/launcher3/settings/DeveloperOptionsFragment;)V

    .line 89
    return-void
.end method
