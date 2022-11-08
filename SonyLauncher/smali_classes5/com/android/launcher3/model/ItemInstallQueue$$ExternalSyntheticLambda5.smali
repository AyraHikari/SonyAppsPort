.class public final synthetic Lcom/android/launcher3/model/ItemInstallQueue$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/launcher3/util/PersistedItemArray$ItemFactory;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/model/ItemInstallQueue;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/ItemInstallQueue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/ItemInstallQueue$$ExternalSyntheticLambda5;->f$0:Lcom/android/launcher3/model/ItemInstallQueue;

    return-void
.end method


# virtual methods
.method public final createInfo(ILandroid/os/UserHandle;Landroid/content/Intent;)Lcom/android/launcher3/model/data/ItemInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/model/ItemInstallQueue$$ExternalSyntheticLambda5;->f$0:Lcom/android/launcher3/model/ItemInstallQueue;

    invoke-static {v0, p1, p2, p3}, Lcom/android/launcher3/model/ItemInstallQueue;->$r8$lambda$B25STcJAHI27v6pzfrctYrwiukc(Lcom/android/launcher3/model/ItemInstallQueue;ILandroid/os/UserHandle;Landroid/content/Intent;)Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;

    move-result-object p1

    return-object p1
.end method
