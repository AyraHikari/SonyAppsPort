.class public final synthetic Lcom/android/launcher3/model/PackageInstallStateChangedTask$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/model/PackageInstallStateChangedTask;

.field public final synthetic f$1:Ljava/util/HashSet;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/PackageInstallStateChangedTask;Ljava/util/HashSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/PackageInstallStateChangedTask$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/model/PackageInstallStateChangedTask;

    iput-object p2, p0, Lcom/android/launcher3/model/PackageInstallStateChangedTask$$ExternalSyntheticLambda1;->f$1:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/model/PackageInstallStateChangedTask$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/model/PackageInstallStateChangedTask;

    iget-object v1, p0, Lcom/android/launcher3/model/PackageInstallStateChangedTask$$ExternalSyntheticLambda1;->f$1:Ljava/util/HashSet;

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/model/PackageInstallStateChangedTask;->lambda$execute$1$com-android-launcher3-model-PackageInstallStateChangedTask(Ljava/util/HashSet;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method
