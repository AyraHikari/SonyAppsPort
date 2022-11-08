.class Lcom/android/launcher3/Launcher$5;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Lcom/android/launcher3/statemanager/StateManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Launcher;->completeAddAppWidget(ILcom/android/launcher3/model/data/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/statemanager/StateManager$StateListener<",
        "Lcom/android/launcher3/LauncherState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;

.field final synthetic val$cellLayout:Lcom/android/launcher3/CellLayout;

.field final synthetic val$launcherHostView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/Launcher;

    .line 1482
    iput-object p1, p0, Lcom/android/launcher3/Launcher$5;->this$0:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/Launcher$5;->val$launcherHostView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iput-object p3, p0, Lcom/android/launcher3/Launcher$5;->val$cellLayout:Lcom/android/launcher3/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V
    .locals 2
    .param p1, "finalState"    # Lcom/android/launcher3/LauncherState;

    .line 1485
    iget-object v0, p0, Lcom/android/launcher3/Launcher$5;->this$0:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->-$$Nest$fgetmPrevLauncherState(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_0

    .line 1486
    iget-object v0, p0, Lcom/android/launcher3/Launcher$5;->val$launcherHostView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iget-object v1, p0, Lcom/android/launcher3/Launcher$5;->val$cellLayout:Lcom/android/launcher3/CellLayout;

    invoke-static {v0, v1}, Lcom/android/launcher3/AppWidgetResizeFrame;->showForWidget(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V

    .line 1487
    iget-object v0, p0, Lcom/android/launcher3/Launcher$5;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/statemanager/StateManager;->removeStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    .line 1489
    :cond_0
    return-void
.end method

.method public bridge synthetic onStateTransitionComplete(Ljava/lang/Object;)V
    .locals 0

    .line 1482
    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Launcher$5;->onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method
