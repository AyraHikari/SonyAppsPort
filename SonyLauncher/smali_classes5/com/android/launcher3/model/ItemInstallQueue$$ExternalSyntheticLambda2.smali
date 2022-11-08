.class public final synthetic Lcom/android/launcher3/model/ItemInstallQueue$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/model/ItemInstallQueue;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/ItemInstallQueue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/ItemInstallQueue$$ExternalSyntheticLambda2;->f$0:Lcom/android/launcher3/model/ItemInstallQueue;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/model/ItemInstallQueue$$ExternalSyntheticLambda2;->f$0:Lcom/android/launcher3/model/ItemInstallQueue;

    check-cast p1, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/model/ItemInstallQueue;->lambda$flushQueueInBackground$0$com-android-launcher3-model-ItemInstallQueue(Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method
