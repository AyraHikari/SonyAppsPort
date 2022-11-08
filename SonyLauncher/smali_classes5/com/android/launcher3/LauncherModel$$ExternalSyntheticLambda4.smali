.class public final synthetic Lcom/android/launcher3/LauncherModel$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/LauncherModel;

.field public final synthetic f$1:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

.field public final synthetic f$2:Landroid/content/pm/ShortcutInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/pm/ShortcutInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$$ExternalSyntheticLambda4;->f$0:Lcom/android/launcher3/LauncherModel;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$$ExternalSyntheticLambda4;->f$1:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iput-object p3, p0, Lcom/android/launcher3/LauncherModel$$ExternalSyntheticLambda4;->f$2:Landroid/content/pm/ShortcutInfo;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/LauncherModel$$ExternalSyntheticLambda4;->f$0:Lcom/android/launcher3/LauncherModel;

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$$ExternalSyntheticLambda4;->f$1:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$$ExternalSyntheticLambda4;->f$2:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/LauncherModel;->lambda$updateAndBindWorkspaceItem$1$com-android-launcher3-LauncherModel(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/pm/ShortcutInfo;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v0

    return-object v0
.end method
