.class Lcom/android/launcher3/taskbar/FallbackTaskbarUIController$1;
.super Ljava/lang/Object;
.source "FallbackTaskbarUIController.java"

# interfaces
.implements Lcom/android/launcher3/statemanager/StateManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/statemanager/StateManager$StateListener<",
        "Lcom/android/quickstep/fallback/RecentsState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;

    .line 37
    iput-object p1, p0, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController$1;->this$0:Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onStateTransitionStart$0$com-android-launcher3-taskbar-FallbackTaskbarUIController$1()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController$1;->this$0:Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;

    sget-object v1, Lcom/android/quickstep/fallback/RecentsState;->BACKGROUND_APP:Lcom/android/quickstep/fallback/RecentsState;

    invoke-static {v0, v1}, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;->-$$Nest$manimateToRecentsState(Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;Lcom/android/quickstep/fallback/RecentsState;)V

    return-void
.end method

.method public onStateTransitionStart(Lcom/android/quickstep/fallback/RecentsState;)V
    .locals 2
    .param p1, "toState"    # Lcom/android/quickstep/fallback/RecentsState;

    .line 40
    iget-object v0, p0, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController$1;->this$0:Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;

    invoke-static {v0, p1}, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;->-$$Nest$manimateToRecentsState(Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;Lcom/android/quickstep/fallback/RecentsState;)V

    .line 43
    iget-object v0, p0, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController$1;->this$0:Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;->-$$Nest$fgetmRecentsActivity(Lcom/android/launcher3/taskbar/FallbackTaskbarUIController;)Lcom/android/quickstep/RecentsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    .line 44
    .local v0, "recentsView":Lcom/android/quickstep/views/RecentsView;
    sget-object v1, Lcom/android/quickstep/fallback/RecentsState;->DEFAULT:Lcom/android/quickstep/fallback/RecentsState;

    if-ne p1, v1, :cond_0

    .line 45
    new-instance v1, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/taskbar/FallbackTaskbarUIController$1;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 44
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/RecentsView;->setTaskLaunchListener(Lcom/android/quickstep/views/RecentsView$TaskLaunchListener;)V

    .line 46
    return-void
.end method

.method public bridge synthetic onStateTransitionStart(Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p1, Lcom/android/quickstep/fallback/RecentsState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/FallbackTaskbarUIController$1;->onStateTransitionStart(Lcom/android/quickstep/fallback/RecentsState;)V

    return-void
.end method
