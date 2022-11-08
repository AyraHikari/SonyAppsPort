.class public final synthetic Lcom/android/launcher3/model/BaseModelUpdateTask$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/LauncherModel$CallbackTask;

.field public final synthetic f$1:Lcom/android/launcher3/model/BgDataModel$Callbacks;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/LauncherModel$CallbackTask;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/BaseModelUpdateTask$$ExternalSyntheticLambda10;->f$0:Lcom/android/launcher3/LauncherModel$CallbackTask;

    iput-object p2, p0, Lcom/android/launcher3/model/BaseModelUpdateTask$$ExternalSyntheticLambda10;->f$1:Lcom/android/launcher3/model/BgDataModel$Callbacks;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/model/BaseModelUpdateTask$$ExternalSyntheticLambda10;->f$0:Lcom/android/launcher3/LauncherModel$CallbackTask;

    iget-object v1, p0, Lcom/android/launcher3/model/BaseModelUpdateTask$$ExternalSyntheticLambda10;->f$1:Lcom/android/launcher3/model/BgDataModel$Callbacks;

    invoke-static {v0, v1}, Lcom/android/launcher3/model/BaseModelUpdateTask;->lambda$scheduleCallbackTask$0(Lcom/android/launcher3/LauncherModel$CallbackTask;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method
