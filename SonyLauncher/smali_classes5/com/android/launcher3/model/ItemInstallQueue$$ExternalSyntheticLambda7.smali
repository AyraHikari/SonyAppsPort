.class public final synthetic Lcom/android/launcher3/model/ItemInstallQueue$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/model/ItemInstallQueue;

.field public final synthetic f$1:Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;

.field public final synthetic f$2:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/ItemInstallQueue;Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/ItemInstallQueue$$ExternalSyntheticLambda7;->f$0:Lcom/android/launcher3/model/ItemInstallQueue;

    iput-object p2, p0, Lcom/android/launcher3/model/ItemInstallQueue$$ExternalSyntheticLambda7;->f$1:Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;

    iput-object p3, p0, Lcom/android/launcher3/model/ItemInstallQueue$$ExternalSyntheticLambda7;->f$2:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/model/ItemInstallQueue$$ExternalSyntheticLambda7;->f$0:Lcom/android/launcher3/model/ItemInstallQueue;

    iget-object v1, p0, Lcom/android/launcher3/model/ItemInstallQueue$$ExternalSyntheticLambda7;->f$1:Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;

    iget-object v2, p0, Lcom/android/launcher3/model/ItemInstallQueue$$ExternalSyntheticLambda7;->f$2:Ljava/lang/Exception;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/model/ItemInstallQueue;->lambda$queuePendingShortcutInfo$4$com-android-launcher3-model-ItemInstallQueue(Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;Ljava/lang/Exception;)V

    return-void
.end method
