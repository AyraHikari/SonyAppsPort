.class final Lcom/sonyericsson/music/common/LowPriorityIntentService$ServiceHandler;
.super Landroid/os/Handler;
.source "LowPriorityIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/common/LowPriorityIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/common/LowPriorityIntentService;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/music/common/LowPriorityIntentService;Landroid/os/Looper;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/sonyericsson/music/common/LowPriorityIntentService$ServiceHandler;->this$0:Lcom/sonyericsson/music/common/LowPriorityIntentService;

    .line 42
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/sonyericsson/music/common/LowPriorityIntentService$ServiceHandler;->this$0:Lcom/sonyericsson/music/common/LowPriorityIntentService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/common/LowPriorityIntentService;->onHandleIntent(Landroid/content/Intent;)V

    .line 48
    iget-object v0, p0, Lcom/sonyericsson/music/common/LowPriorityIntentService$ServiceHandler;->this$0:Lcom/sonyericsson/music/common/LowPriorityIntentService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Landroid/app/Service;->stopSelf(I)V

    return-void
.end method
