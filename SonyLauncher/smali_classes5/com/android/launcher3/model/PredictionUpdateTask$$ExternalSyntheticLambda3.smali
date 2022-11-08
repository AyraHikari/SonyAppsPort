.class public final synthetic Lcom/android/launcher3/model/PredictionUpdateTask$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/LauncherAppState;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/LauncherAppState;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/PredictionUpdateTask$$ExternalSyntheticLambda3;->f$0:Lcom/android/launcher3/LauncherAppState;

    iput-object p2, p0, Lcom/android/launcher3/model/PredictionUpdateTask$$ExternalSyntheticLambda3;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/model/PredictionUpdateTask$$ExternalSyntheticLambda3;->f$0:Lcom/android/launcher3/LauncherAppState;

    iget-object v1, p0, Lcom/android/launcher3/model/PredictionUpdateTask$$ExternalSyntheticLambda3;->f$1:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/model/data/AppInfo;

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/model/PredictionUpdateTask;->lambda$execute$3(Lcom/android/launcher3/LauncherAppState;Landroid/content/Context;Lcom/android/launcher3/model/data/AppInfo;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object p1

    return-object p1
.end method
