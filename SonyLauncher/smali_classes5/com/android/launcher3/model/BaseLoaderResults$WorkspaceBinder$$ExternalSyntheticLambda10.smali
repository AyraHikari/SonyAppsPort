.class public final synthetic Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder$$ExternalSyntheticLambda10;->f$0:Ljava/util/ArrayList;

    iput p2, p0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder$$ExternalSyntheticLambda10;->f$1:I

    iput p3, p0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder$$ExternalSyntheticLambda10;->f$2:I

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder$$ExternalSyntheticLambda10;->f$0:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder$$ExternalSyntheticLambda10;->f$1:I

    iget v2, p0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder$$ExternalSyntheticLambda10;->f$2:I

    invoke-static {v0, v1, v2, p1}, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->lambda$bindWorkspaceItems$7(Ljava/util/ArrayList;IILcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method
