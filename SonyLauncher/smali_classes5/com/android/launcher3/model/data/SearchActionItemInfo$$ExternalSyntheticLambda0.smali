.class public final synthetic Lcom/android/launcher3/model/data/SearchActionItemInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/model/data/SearchActionItemInfo;

.field public final synthetic f$1:Lcom/android/launcher3/LauncherAppState;

.field public final synthetic f$2:Lcom/android/launcher3/model/data/WorkspaceItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/data/SearchActionItemInfo;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/model/data/SearchActionItemInfo;

    iput-object p2, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo$$ExternalSyntheticLambda0;->f$1:Lcom/android/launcher3/LauncherAppState;

    iput-object p3, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo$$ExternalSyntheticLambda0;->f$2:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/model/data/SearchActionItemInfo;

    iget-object v1, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo$$ExternalSyntheticLambda0;->f$1:Lcom/android/launcher3/LauncherAppState;

    iget-object v2, p0, Lcom/android/launcher3/model/data/SearchActionItemInfo$$ExternalSyntheticLambda0;->f$2:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/model/data/SearchActionItemInfo;->lambda$makeWorkspaceItem$0$com-android-launcher3-model-data-SearchActionItemInfo(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v0

    return-object v0
.end method
