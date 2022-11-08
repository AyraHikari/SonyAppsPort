.class Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;
.super Ljava/lang/Object;
.source "SecondaryDropTarget.java"

# interfaces
.implements Lcom/android/launcher3/DragSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/SecondaryDropTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeferredOnComplete"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

.field private final mOriginal:Lcom/android/launcher3/DragSource;

.field private mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/launcher3/SecondaryDropTarget;


# direct methods
.method static bridge synthetic -$$Nest$fputmPackageName(Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/SecondaryDropTarget;Lcom/android/launcher3/DragSource;Landroid/content/Context;)V
    .locals 0
    .param p2, "original"    # Lcom/android/launcher3/DragSource;
    .param p3, "context"    # Landroid/content/Context;

    .line 350
    iput-object p1, p0, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->this$0:Lcom/android/launcher3/SecondaryDropTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    iput-object p2, p0, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->mOriginal:Lcom/android/launcher3/DragSource;

    .line 352
    iput-object p3, p0, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->mContext:Landroid/content/Context;

    .line 353
    return-void
.end method


# virtual methods
.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;
    .param p2, "d"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p3, "success"    # Z

    .line 358
    iput-object p2, p0, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    .line 359
    return-void
.end method

.method public onLauncherResume()V
    .locals 4

    .line 363
    new-instance v0, Lcom/android/launcher3/util/PackageManagerHelper;

    iget-object v1, p0, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v2, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    const/16 v3, 0x2000

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/util/PackageManagerHelper;->getApplicationInfo(Ljava/lang/String;Landroid/os/UserHandle;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v1, p0, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->mOriginal:Lcom/android/launcher3/DragSource;

    iput-object v1, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    .line 366
    iget-object v0, p0, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->mOriginal:Lcom/android/launcher3/DragSource;

    iget-object v1, p0, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->this$0:Lcom/android/launcher3/SecondaryDropTarget;

    iget-object v2, p0, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/launcher3/DragSource;->onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V

    .line 367
    iget-object v0, p0, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->this$0:Lcom/android/launcher3/SecondaryDropTarget;

    invoke-static {v0}, Lcom/android/launcher3/SecondaryDropTarget;->-$$Nest$fgetmStatsLogManager(Lcom/android/launcher3/SecondaryDropTarget;)Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v1, v1, Lcom/android/launcher3/DropTarget$DragObject;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_UNINSTALL_COMPLETED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 368
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    goto :goto_0

    .line 370
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->sendFailure()V

    .line 371
    iget-object v0, p0, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->this$0:Lcom/android/launcher3/SecondaryDropTarget;

    invoke-static {v0}, Lcom/android/launcher3/SecondaryDropTarget;->-$$Nest$fgetmStatsLogManager(Lcom/android/launcher3/SecondaryDropTarget;)Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v1, v1, Lcom/android/launcher3/DropTarget$DragObject;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_UNINSTALL_CANCELLED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 372
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 374
    :goto_0
    return-void
.end method

.method public sendFailure()V
    .locals 4

    .line 377
    iget-object v0, p0, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v1, p0, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->mOriginal:Lcom/android/launcher3/DragSource;

    iput-object v1, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    .line 378
    iget-object v0, p0, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/DropTarget$DragObject;->cancelled:Z

    .line 379
    iget-object v0, p0, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->mOriginal:Lcom/android/launcher3/DragSource;

    iget-object v1, p0, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->this$0:Lcom/android/launcher3/SecondaryDropTarget;

    iget-object v2, p0, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/launcher3/DragSource;->onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V

    .line 380
    return-void
.end method
