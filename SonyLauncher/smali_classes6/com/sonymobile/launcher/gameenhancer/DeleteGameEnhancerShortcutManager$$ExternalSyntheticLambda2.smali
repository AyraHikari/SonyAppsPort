.class public final synthetic Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerShortcutManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic f$0:Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerShortcutManager;

.field public final synthetic f$1:Lcom/android/launcher3/Launcher;

.field public final synthetic f$2:Lcom/android/launcher3/util/IntSet;


# direct methods
.method public synthetic constructor <init>(Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerShortcutManager;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/util/IntSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerShortcutManager$$ExternalSyntheticLambda2;->f$0:Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerShortcutManager;

    iput-object p2, p0, Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerShortcutManager$$ExternalSyntheticLambda2;->f$1:Lcom/android/launcher3/Launcher;

    iput-object p3, p0, Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerShortcutManager$$ExternalSyntheticLambda2;->f$2:Lcom/android/launcher3/util/IntSet;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerShortcutManager$$ExternalSyntheticLambda2;->f$0:Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerShortcutManager;

    iget-object v1, p0, Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerShortcutManager$$ExternalSyntheticLambda2;->f$1:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerShortcutManager$$ExternalSyntheticLambda2;->f$2:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v0, v1, v2, p1}, Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerShortcutManager;->lambda$showRemoveGEShortcutDialog$2$com-sonymobile-launcher-gameenhancer-DeleteGameEnhancerShortcutManager(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/util/IntSet;Landroid/content/DialogInterface;)V

    return-void
.end method
