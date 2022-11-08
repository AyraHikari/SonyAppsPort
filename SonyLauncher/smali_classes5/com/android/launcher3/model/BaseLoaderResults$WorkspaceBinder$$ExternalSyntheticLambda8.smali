.class public final synthetic Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/util/IntSet;

.field public final synthetic f$1:Lcom/android/launcher3/util/RunnableList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/util/RunnableList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder$$ExternalSyntheticLambda8;->f$0:Lcom/android/launcher3/util/IntSet;

    iput-object p2, p0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder$$ExternalSyntheticLambda8;->f$1:Lcom/android/launcher3/util/RunnableList;

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder$$ExternalSyntheticLambda8;->f$0:Lcom/android/launcher3/util/IntSet;

    iget-object v1, p0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder$$ExternalSyntheticLambda8;->f$1:Lcom/android/launcher3/util/RunnableList;

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->lambda$bind$6(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/util/RunnableList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method
