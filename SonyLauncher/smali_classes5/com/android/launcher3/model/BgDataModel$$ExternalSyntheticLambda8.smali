.class public final synthetic Lcom/android/launcher3/model/BgDataModel$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/BgDataModel$$ExternalSyntheticLambda8;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher3/model/BgDataModel$$ExternalSyntheticLambda8;->f$1:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel$$ExternalSyntheticLambda8;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher3/model/BgDataModel$$ExternalSyntheticLambda8;->f$1:Landroid/os/UserHandle;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/model/BgDataModel;->lambda$updateShortcutPinnedState$2(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method
