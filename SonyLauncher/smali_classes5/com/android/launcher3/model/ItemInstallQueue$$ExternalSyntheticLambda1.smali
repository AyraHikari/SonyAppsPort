.class public final synthetic Lcom/android/launcher3/model/ItemInstallQueue$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/ItemInstallQueue$$ExternalSyntheticLambda1;->f$0:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/model/ItemInstallQueue$$ExternalSyntheticLambda1;->f$0:Landroid/os/UserHandle;

    check-cast p1, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;

    invoke-static {v0, p1}, Lcom/android/launcher3/model/ItemInstallQueue;->lambda$getPendingShortcuts$3(Landroid/os/UserHandle;Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object p1

    return-object p1
.end method
