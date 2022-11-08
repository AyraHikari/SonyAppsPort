.class public final synthetic Lcom/android/launcher3/model/BaseModelUpdateTask$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/BaseModelUpdateTask$$ExternalSyntheticLambda4;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/model/BaseModelUpdateTask$$ExternalSyntheticLambda4;->f$0:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/launcher3/model/BaseModelUpdateTask;->lambda$bindUpdatedWorkspaceItems$2(Ljava/util/List;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method
