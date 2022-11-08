.class public final synthetic Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda12;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda12;->f$0:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/android/launcher3/model/ModelWriter;->lambda$moveItemsInDatabase$1(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method
