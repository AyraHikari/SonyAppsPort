.class Lcom/android/launcher3/Launcher$4;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Launcher;->completeTwoStageWidgetDrop(IILcom/android/launcher3/util/PendingRequestArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;

.field final synthetic val$appWidgetId:I

.field final synthetic val$layout:Landroid/appwidget/AppWidgetHostView;

.field final synthetic val$requestArgs:Lcom/android/launcher3/util/PendingRequestArgs;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/util/PendingRequestArgs;Landroid/appwidget/AppWidgetHostView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/Launcher;

    .line 983
    iput-object p1, p0, Lcom/android/launcher3/Launcher$4;->this$0:Lcom/android/launcher3/Launcher;

    iput p2, p0, Lcom/android/launcher3/Launcher$4;->val$appWidgetId:I

    iput-object p3, p0, Lcom/android/launcher3/Launcher$4;->val$requestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    iput-object p4, p0, Lcom/android/launcher3/Launcher$4;->val$layout:Landroid/appwidget/AppWidgetHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 986
    iget-object v0, p0, Lcom/android/launcher3/Launcher$4;->this$0:Lcom/android/launcher3/Launcher;

    iget v1, p0, Lcom/android/launcher3/Launcher$4;->val$appWidgetId:I

    iget-object v2, p0, Lcom/android/launcher3/Launcher$4;->val$requestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    iget-object v3, p0, Lcom/android/launcher3/Launcher$4;->val$layout:Landroid/appwidget/AppWidgetHostView;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/Launcher;->completeAddAppWidget(ILcom/android/launcher3/model/data/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V

    .line 987
    iget-object v0, p0, Lcom/android/launcher3/Launcher$4;->this$0:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mStateManager:Lcom/android/launcher3/statemanager/StateManager;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;J)V

    .line 988
    return-void
.end method
