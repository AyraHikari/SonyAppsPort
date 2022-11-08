.class Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger$1;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source "StatsLogCompatManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;

.field final synthetic val$event:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;


# direct methods
.method constructor <init>(Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;

    .line 337
    iput-object p1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger$1;->this$0:Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;

    iput-object p2, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger$1;->val$event:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
    .locals 4
    .param p1, "app"    # Lcom/android/launcher3/LauncherAppState;
    .param p2, "dataModel"    # Lcom/android/launcher3/model/BgDataModel;
    .param p3, "apps"    # Lcom/android/launcher3/model/AllAppsList;

    .line 341
    iget-object v0, p2, Lcom/android/launcher3/model/BgDataModel;->folders:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget-object v1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger$1;->this$0:Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;

    invoke-static {v1}, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->-$$Nest$fgetmItemInfo(Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;)Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSparseArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/FolderInfo;

    .line 342
    .local v0, "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    iget-object v1, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger$1;->this$0:Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;

    iget-object v2, p0, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger$1;->val$event:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    invoke-static {v1}, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->-$$Nest$fgetmItemInfo(Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;)Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/launcher3/model/data/ItemInfo;->buildProto(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->-$$Nest$mapplyOverwrites(Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->-$$Nest$mwrite(Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;Lcom/android/launcher3/logging/StatsLogManager$EventEnum;Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;)V

    .line 343
    return-void
.end method
