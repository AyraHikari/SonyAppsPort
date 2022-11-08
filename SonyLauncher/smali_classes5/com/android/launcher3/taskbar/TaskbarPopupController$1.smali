.class Lcom/android/launcher3/taskbar/TaskbarPopupController$1;
.super Lcom/android/launcher3/popup/PopupLiveUpdateHandler;
.source "TaskbarPopupController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/TaskbarPopupController;->showForIcon(Lcom/android/launcher3/BubbleTextView;)Lcom/android/launcher3/popup/PopupContainerWithArrow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/popup/PopupLiveUpdateHandler<",
        "Lcom/android/launcher3/taskbar/BaseTaskbarContext;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarPopupController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/taskbar/TaskbarPopupController;Lcom/android/launcher3/taskbar/BaseTaskbarContext;Lcom/android/launcher3/popup/PopupContainerWithArrow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/taskbar/TaskbarPopupController;
    .param p2, "context"    # Lcom/android/launcher3/taskbar/BaseTaskbarContext;

    .line 148
    .local p3, "popupContainerWithArrow":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<Lcom/android/launcher3/taskbar/BaseTaskbarContext;>;"
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarPopupController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarPopupController;

    invoke-direct {p0, p2, p3}, Lcom/android/launcher3/popup/PopupLiveUpdateHandler;-><init>(Landroid/content/Context;Lcom/android/launcher3/popup/PopupContainerWithArrow;)V

    return-void
.end method


# virtual methods
.method protected showPopupContainerForIcon(Lcom/android/launcher3/BubbleTextView;)V
    .locals 1
    .param p1, "originalIcon"    # Lcom/android/launcher3/BubbleTextView;

    .line 151
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarPopupController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarPopupController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/taskbar/TaskbarPopupController;->showForIcon(Lcom/android/launcher3/BubbleTextView;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    .line 152
    return-void
.end method
