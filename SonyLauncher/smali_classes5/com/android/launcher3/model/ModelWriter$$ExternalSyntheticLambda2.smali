.class public final synthetic Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/model/data/ItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda2;->f$0:Lcom/android/launcher3/model/data/ItemInfo;

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda2;->f$0:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/model/ModelWriter;->lambda$notifyItemModified$4(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method
