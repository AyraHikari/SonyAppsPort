.class public final synthetic Lcom/android/launcher3/model/BaseLoaderResults$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/model/BaseLoaderResults;

.field public final synthetic f$1:Lcom/android/launcher3/LauncherModel$CallbackTask;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/BaseLoaderResults;Lcom/android/launcher3/LauncherModel$CallbackTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/BaseLoaderResults$$ExternalSyntheticLambda3;->f$0:Lcom/android/launcher3/model/BaseLoaderResults;

    iput-object p2, p0, Lcom/android/launcher3/model/BaseLoaderResults$$ExternalSyntheticLambda3;->f$1:Lcom/android/launcher3/LauncherModel$CallbackTask;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/model/BaseLoaderResults$$ExternalSyntheticLambda3;->f$0:Lcom/android/launcher3/model/BaseLoaderResults;

    iget-object v1, p0, Lcom/android/launcher3/model/BaseLoaderResults$$ExternalSyntheticLambda3;->f$1:Lcom/android/launcher3/LauncherModel$CallbackTask;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/BaseLoaderResults;->lambda$executeCallbacksTask$3$com-android-launcher3-model-BaseLoaderResults(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    return-void
.end method
