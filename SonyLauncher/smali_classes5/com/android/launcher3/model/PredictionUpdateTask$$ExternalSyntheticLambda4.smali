.class public final synthetic Lcom/android/launcher3/model/PredictionUpdateTask$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Landroid/content/ComponentName;

.field public final synthetic f$2:Landroid/os/UserHandle;

.field public final synthetic f$3:Lcom/android/launcher3/LauncherAppState;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/UserHandle;Lcom/android/launcher3/LauncherAppState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/PredictionUpdateTask$$ExternalSyntheticLambda4;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher3/model/PredictionUpdateTask$$ExternalSyntheticLambda4;->f$1:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/launcher3/model/PredictionUpdateTask$$ExternalSyntheticLambda4;->f$2:Landroid/os/UserHandle;

    iput-object p4, p0, Lcom/android/launcher3/model/PredictionUpdateTask$$ExternalSyntheticLambda4;->f$3:Lcom/android/launcher3/LauncherAppState;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/model/PredictionUpdateTask$$ExternalSyntheticLambda4;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher3/model/PredictionUpdateTask$$ExternalSyntheticLambda4;->f$1:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/launcher3/model/PredictionUpdateTask$$ExternalSyntheticLambda4;->f$2:Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/launcher3/model/PredictionUpdateTask$$ExternalSyntheticLambda4;->f$3:Lcom/android/launcher3/LauncherAppState;

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher3/model/PredictionUpdateTask;->lambda$execute$4(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/UserHandle;Lcom/android/launcher3/LauncherAppState;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v0

    return-object v0
.end method
