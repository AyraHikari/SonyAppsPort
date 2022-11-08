.class public final synthetic Lcom/android/launcher3/model/PredictionUpdateTask$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/model/BgDataModel;

.field public final synthetic f$1:Lcom/android/launcher3/LauncherAppState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/LauncherAppState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/PredictionUpdateTask$$ExternalSyntheticLambda5;->f$0:Lcom/android/launcher3/model/BgDataModel;

    iput-object p2, p0, Lcom/android/launcher3/model/PredictionUpdateTask$$ExternalSyntheticLambda5;->f$1:Lcom/android/launcher3/LauncherAppState;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/model/PredictionUpdateTask$$ExternalSyntheticLambda5;->f$0:Lcom/android/launcher3/model/BgDataModel;

    iget-object v1, p0, Lcom/android/launcher3/model/PredictionUpdateTask$$ExternalSyntheticLambda5;->f$1:Lcom/android/launcher3/LauncherAppState;

    check-cast p1, Landroid/os/UserHandle;

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/model/PredictionUpdateTask;->lambda$execute$5(Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/LauncherAppState;Landroid/os/UserHandle;)V

    return-void
.end method
