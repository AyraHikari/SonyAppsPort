.class public final synthetic Lcom/android/launcher3/model/ShortcutsChangedTask$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/content/pm/ShortcutInfo;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lcom/android/launcher3/LauncherAppState;

.field public final synthetic f$3:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/ShortcutsChangedTask$$ExternalSyntheticLambda3;->f$0:Landroid/content/pm/ShortcutInfo;

    iput-object p2, p0, Lcom/android/launcher3/model/ShortcutsChangedTask$$ExternalSyntheticLambda3;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/launcher3/model/ShortcutsChangedTask$$ExternalSyntheticLambda3;->f$2:Lcom/android/launcher3/LauncherAppState;

    iput-object p4, p0, Lcom/android/launcher3/model/ShortcutsChangedTask$$ExternalSyntheticLambda3;->f$3:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/model/ShortcutsChangedTask$$ExternalSyntheticLambda3;->f$0:Landroid/content/pm/ShortcutInfo;

    iget-object v1, p0, Lcom/android/launcher3/model/ShortcutsChangedTask$$ExternalSyntheticLambda3;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/model/ShortcutsChangedTask$$ExternalSyntheticLambda3;->f$2:Lcom/android/launcher3/LauncherAppState;

    iget-object v3, p0, Lcom/android/launcher3/model/ShortcutsChangedTask$$ExternalSyntheticLambda3;->f$3:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/launcher3/model/ShortcutsChangedTask;->lambda$execute$2(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method
