.class final Lcom/android/systemui/shared/system/InputConsumerController$InputEventReceiver;
.super Landroid/view/BatchedInputEventReceiver;
.source "InputConsumerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/system/InputConsumerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/system/InputConsumerController;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/system/InputConsumerController;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V
    .locals 0
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "choreographer"    # Landroid/view/Choreographer;

    .line 67
    iput-object p1, p0, Lcom/android/systemui/shared/system/InputConsumerController$InputEventReceiver;->this$0:Lcom/android/systemui/shared/system/InputConsumerController;

    .line 68
    invoke-direct {p0, p2, p3, p4}, Landroid/view/BatchedInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    .line 69
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 73
    const/4 v0, 0x1

    .line 75
    .local v0, "handled":Z
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/shared/system/InputConsumerController$InputEventReceiver;->this$0:Lcom/android/systemui/shared/system/InputConsumerController;

    invoke-static {v1}, Lcom/android/systemui/shared/system/InputConsumerController;->access$000(Lcom/android/systemui/shared/system/InputConsumerController;)Lcom/android/systemui/shared/system/InputConsumerController$InputListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/android/systemui/shared/system/InputConsumerController$InputEventReceiver;->this$0:Lcom/android/systemui/shared/system/InputConsumerController;

    invoke-static {v1}, Lcom/android/systemui/shared/system/InputConsumerController;->access$000(Lcom/android/systemui/shared/system/InputConsumerController;)Lcom/android/systemui/shared/system/InputConsumerController$InputListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/systemui/shared/system/InputConsumerController$InputListener;->onInputEvent(Landroid/view/InputEvent;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 79
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/shared/system/InputConsumerController$InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 80
    nop

    .line 81
    return-void

    .line 79
    :catchall_0
    move-exception v1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/shared/system/InputConsumerController$InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 80
    throw v1
.end method
