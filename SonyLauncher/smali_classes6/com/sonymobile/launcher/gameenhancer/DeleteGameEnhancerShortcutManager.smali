.class public Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerShortcutManager;
.super Ljava/lang/Object;
.source "DeleteGameEnhancerShortcutManager.java"


# instance fields
.field private mModelWriter:Lcom/android/launcher3/model/ModelWriter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private showUndoSnackbar(Landroid/content/Context;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/util/IntSet;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p3, "itemPages"    # Lcom/android/launcher3/util/IntSet;

    .line 51
    new-instance v0, Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerShortcutManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p2, p3}, Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerShortcutManager$$ExternalSyntheticLambda3;-><init>(Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerShortcutManager;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/util/IntSet;)V

    .line 57
    .local v0, "onActionClicked":Ljava/lang/Runnable;
    new-instance v1, Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerShortcutManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerShortcutManager$$ExternalSyntheticLambda4;-><init>(Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerShortcutManager;Landroid/content/Context;)V

    .line 62
    .local v1, "onDismissed":Ljava/lang/Runnable;
    sget v2, Lcom/android/launcher3/R$string;->item_removed:I

    sget v3, Lcom/android/launcher3/R$string;->undo:I

    invoke-static {p2, v2, v3, v1, v0}, Lcom/android/launcher3/views/Snackbar;->show(Landroid/content/Context;IILjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 64
    return-void
.end method


# virtual methods
.method synthetic lambda$showRemoveGEShortcutDialog$0$com-sonymobile-launcher-gameenhancer-DeleteGameEnhancerShortcutManager(Landroid/content/Context;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/util/IntSet;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p3, "itemPages"    # Lcom/android/launcher3/util/IntSet;
    .param p4, "dialog"    # Landroid/content/DialogInterface;
    .param p5, "which"    # I

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerShortcutManager;->showUndoSnackbar(Landroid/content/Context;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/util/IntSet;)V

    return-void
.end method

.method synthetic lambda$showRemoveGEShortcutDialog$1$com-sonymobile-launcher-gameenhancer-DeleteGameEnhancerShortcutManager(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/util/IntSet;Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "itemPages"    # Lcom/android/launcher3/util/IntSet;
    .param p3, "dialog"    # Landroid/content/DialogInterface;
    .param p4, "which"    # I

    .line 31
    invoke-virtual {p1, p2}, Lcom/android/launcher3/Launcher;->setPagesToBindSynchronously(Lcom/android/launcher3/util/IntSet;)V

    .line 32
    iget-object v0, p0, Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerShortcutManager;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    invoke-virtual {v0}, Lcom/android/launcher3/model/ModelWriter;->abortDelete()V

    .line 33
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_UNDO:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 34
    return-void
.end method

.method synthetic lambda$showRemoveGEShortcutDialog$2$com-sonymobile-launcher-gameenhancer-DeleteGameEnhancerShortcutManager(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/util/IntSet;Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "itemPages"    # Lcom/android/launcher3/util/IntSet;
    .param p3, "dialog"    # Landroid/content/DialogInterface;

    .line 37
    invoke-virtual {p1, p2}, Lcom/android/launcher3/Launcher;->setPagesToBindSynchronously(Lcom/android/launcher3/util/IntSet;)V

    .line 38
    iget-object v0, p0, Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerShortcutManager;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    invoke-virtual {v0}, Lcom/android/launcher3/model/ModelWriter;->abortDelete()V

    .line 39
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_UNDO:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 40
    return-void
.end method

.method synthetic lambda$showUndoSnackbar$3$com-sonymobile-launcher-gameenhancer-DeleteGameEnhancerShortcutManager(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/util/IntSet;)V
    .locals 2
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "itemPages"    # Lcom/android/launcher3/util/IntSet;

    .line 52
    invoke-virtual {p1, p2}, Lcom/android/launcher3/Launcher;->setPagesToBindSynchronously(Lcom/android/launcher3/util/IntSet;)V

    .line 53
    iget-object v0, p0, Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerShortcutManager;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    invoke-virtual {v0}, Lcom/android/launcher3/model/ModelWriter;->abortDelete()V

    .line 54
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_UNDO:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 55
    return-void
.end method

.method synthetic lambda$showUndoSnackbar$4$com-sonymobile-launcher-gameenhancer-DeleteGameEnhancerShortcutManager(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .line 58
    iget-object v0, p0, Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerShortcutManager;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    invoke-virtual {v0}, Lcom/android/launcher3/model/ModelWriter;->commitDelete()V

    .line 59
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sonymobile/launcher/gameenhancer/GameEnhancerAccessor;->setHideLauncherIconSetting(Landroid/content/Context;Z)V

    .line 60
    return-void
.end method

.method public showRemoveGEShortcutDialog(Landroid/content/Context;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/util/IntSet;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p3, "itemPages"    # Lcom/android/launcher3/util/IntSet;

    .line 24
    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerShortcutManager;->mModelWriter:Lcom/android/launcher3/model/ModelWriter;

    .line 26
    new-instance v0, Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerShortcutManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerShortcutManager$$ExternalSyntheticLambda0;-><init>(Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerShortcutManager;Landroid/content/Context;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/util/IntSet;)V

    .line 30
    .local v0, "positiveBtnClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerShortcutManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2, p3}, Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerShortcutManager$$ExternalSyntheticLambda1;-><init>(Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerShortcutManager;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/util/IntSet;)V

    .line 36
    .local v1, "cancelBtnClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerShortcutManager$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p2, p3}, Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerShortcutManager$$ExternalSyntheticLambda2;-><init>(Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerShortcutManager;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/util/IntSet;)V

    .line 42
    .local v2, "cancelListener":Landroid/content/DialogInterface$OnCancelListener;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/android/launcher3/R$string;->ge_dialog_delete_ge_shortcut_title_txt:I

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 43
    const v4, 0x1010355

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lcom/android/launcher3/R$string;->ge_dialog_delete_ge_shortcut_txt:I

    .line 44
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 45
    const v4, 0x104000a

    invoke-virtual {v3, v4, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 46
    const/high16 v4, 0x1040000

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 47
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 48
    return-void
.end method
