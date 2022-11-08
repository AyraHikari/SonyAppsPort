.class Lcom/android/launcher3/graphics/SysUiScrim$3;
.super Landroid/content/BroadcastReceiver;
.source "SysUiScrim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/graphics/SysUiScrim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/graphics/SysUiScrim;


# direct methods
.method constructor <init>(Lcom/android/launcher3/graphics/SysUiScrim;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/graphics/SysUiScrim;

    .line 88
    iput-object p1, p0, Lcom/android/launcher3/graphics/SysUiScrim$3;->this$0:Lcom/android/launcher3/graphics/SysUiScrim;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 91
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/android/launcher3/graphics/SysUiScrim$3;->this$0:Lcom/android/launcher3/graphics/SysUiScrim;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/launcher3/graphics/SysUiScrim;->-$$Nest$fputmAnimateScrimOnNextDraw(Lcom/android/launcher3/graphics/SysUiScrim;Z)V

    goto :goto_0

    .line 94
    :cond_0
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/android/launcher3/graphics/SysUiScrim$3;->this$0:Lcom/android/launcher3/graphics/SysUiScrim;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/launcher3/graphics/SysUiScrim;->-$$Nest$fputmAnimateScrimOnNextDraw(Lcom/android/launcher3/graphics/SysUiScrim;Z)V

    .line 99
    :cond_1
    :goto_0
    return-void
.end method
