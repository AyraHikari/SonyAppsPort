.class Lcom/android/launcher3/Workspace$5;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Workspace;->onDropExternal([ILcom/android/launcher3/CellLayout;Lcom/android/launcher3/DropTarget$DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;

.field final synthetic val$container:I

.field final synthetic val$d:Lcom/android/launcher3/DropTarget$DragObject;

.field final synthetic val$item:Lcom/android/launcher3/model/data/ItemInfo;

.field final synthetic val$pendingInfo:Lcom/android/launcher3/PendingAddItemInfo;

.field final synthetic val$screenId:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/PendingAddItemInfo;IILcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/Workspace;

    .line 2765
    .local p0, "this":Lcom/android/launcher3/Workspace$5;, "Lcom/android/launcher3/Workspace$5;"
    iput-object p1, p0, Lcom/android/launcher3/Workspace$5;->this$0:Lcom/android/launcher3/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/Workspace$5;->val$pendingInfo:Lcom/android/launcher3/PendingAddItemInfo;

    iput p3, p0, Lcom/android/launcher3/Workspace$5;->val$container:I

    iput p4, p0, Lcom/android/launcher3/Workspace$5;->val$screenId:I

    iput-object p5, p0, Lcom/android/launcher3/Workspace$5;->val$item:Lcom/android/launcher3/model/data/ItemInfo;

    iput-object p6, p0, Lcom/android/launcher3/Workspace$5;->val$d:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 2771
    .local p0, "this":Lcom/android/launcher3/Workspace$5;, "Lcom/android/launcher3/Workspace$5;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace$5;->this$0:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->deferRemoveExtraEmptyScreen()V

    .line 2775
    iget-object v0, p0, Lcom/android/launcher3/Workspace$5;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/Workspace$5;->val$pendingInfo:Lcom/android/launcher3/PendingAddItemInfo;

    iget v3, p0, Lcom/android/launcher3/Workspace$5;->val$container:I

    iget v4, p0, Lcom/android/launcher3/Workspace$5;->val$screenId:I

    iget-object v0, p0, Lcom/android/launcher3/Workspace$5;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    iget-object v0, p0, Lcom/android/launcher3/Workspace$5;->val$item:Lcom/android/launcher3/model/data/ItemInfo;

    iget v6, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget-object v0, p0, Lcom/android/launcher3/Workspace$5;->val$item:Lcom/android/launcher3/model/data/ItemInfo;

    iget v7, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/Launcher;->addPendingItem(Lcom/android/launcher3/PendingAddItemInfo;II[III)V

    .line 2777
    iget-object v0, p0, Lcom/android/launcher3/Workspace$5;->this$0:Lcom/android/launcher3/Workspace;

    invoke-static {v0}, Lcom/android/launcher3/Workspace;->-$$Nest$fgetmStatsLogManager(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Workspace$5;->val$d:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v1, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Workspace$5;->val$d:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v1, v1, Lcom/android/launcher3/DropTarget$DragObject;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    .line 2778
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DROP_COMPLETED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 2779
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 2780
    return-void
.end method
