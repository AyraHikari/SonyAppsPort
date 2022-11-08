.class public final synthetic Lcom/android/launcher3/taskbar/TaskbarPopupController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/taskbar/BaseTaskbarContext;

.field public final synthetic f$1:Lcom/android/launcher3/popup/PopupContainerWithArrow;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/BaseTaskbarContext;Lcom/android/launcher3/popup/PopupContainerWithArrow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarPopupController$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/taskbar/BaseTaskbarContext;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarPopupController$$ExternalSyntheticLambda1;->f$1:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarPopupController$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/taskbar/BaseTaskbarContext;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarPopupController$$ExternalSyntheticLambda1;->f$1:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-static {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarPopupController;->lambda$showForIcon$4(Lcom/android/launcher3/taskbar/BaseTaskbarContext;Lcom/android/launcher3/popup/PopupContainerWithArrow;)V

    return-void
.end method
