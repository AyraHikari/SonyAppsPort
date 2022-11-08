.class public final synthetic Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/content/pm/LauncherActivityInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/LauncherActivityInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo$$ExternalSyntheticLambda0;->f$0:Landroid/content/pm/LauncherActivityInfo;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo$$ExternalSyntheticLambda0;->f$0:Landroid/content/pm/LauncherActivityInfo;

    invoke-static {v0}, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;->lambda$getItemInfo$0(Landroid/content/pm/LauncherActivityInfo;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object v0

    return-object v0
.end method
