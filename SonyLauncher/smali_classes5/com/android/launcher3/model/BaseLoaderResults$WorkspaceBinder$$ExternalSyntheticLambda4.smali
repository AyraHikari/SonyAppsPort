.class public final synthetic Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder$$ExternalSyntheticLambda4;->f$0:Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder$$ExternalSyntheticLambda4;->f$0:Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;

    check-cast p1, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/model/BaseLoaderResults$WorkspaceBinder;->lambda$bind$3$com-android-launcher3-model-BaseLoaderResults$WorkspaceBinder(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V

    return-void
.end method