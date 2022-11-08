.class Lcom/android/launcher3/taskbar/TaskbarKeyguardController$1;
.super Landroid/content/BroadcastReceiver;
.source "TaskbarKeyguardController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/TaskbarKeyguardController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarKeyguardController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/taskbar/TaskbarKeyguardController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/taskbar/TaskbarKeyguardController;

    .line 40
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarKeyguardController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarKeyguardController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 43
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarKeyguardController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarKeyguardController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->-$$Nest$fputmIsScreenOff(Lcom/android/launcher3/taskbar/TaskbarKeyguardController;Z)V

    .line 44
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarKeyguardController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarKeyguardController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarKeyguardController;->-$$Nest$fgetmContext(Lcom/android/launcher3/taskbar/TaskbarKeyguardController;)Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7ffff

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    .line 45
    return-void
.end method
