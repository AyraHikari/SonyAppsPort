.class public final synthetic Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerShortcutManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerShortcutManager;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lcom/android/launcher3/Launcher;

.field public final synthetic f$3:Lcom/android/launcher3/util/IntSet;


# direct methods
.method public synthetic constructor <init>(Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerShortcutManager;Landroid/content/Context;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/util/IntSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerShortcutManager$$ExternalSyntheticLambda0;->f$0:Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerShortcutManager;

    iput-object p2, p0, Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerShortcutManager$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerShortcutManager$$ExternalSyntheticLambda0;->f$2:Lcom/android/launcher3/Launcher;

    iput-object p4, p0, Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerShortcutManager$$ExternalSyntheticLambda0;->f$3:Lcom/android/launcher3/util/IntSet;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerShortcutManager$$ExternalSyntheticLambda0;->f$0:Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerShortcutManager;

    iget-object v1, p0, Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerShortcutManager$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerShortcutManager$$ExternalSyntheticLambda0;->f$2:Lcom/android/launcher3/Launcher;

    iget-object v3, p0, Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerShortcutManager$$ExternalSyntheticLambda0;->f$3:Lcom/android/launcher3/util/IntSet;

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/launcher/gameenhancer/DeleteGameEnhancerShortcutManager;->lambda$showRemoveGEShortcutDialog$0$com-sonymobile-launcher-gameenhancer-DeleteGameEnhancerShortcutManager(Landroid/content/Context;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/util/IntSet;Landroid/content/DialogInterface;I)V

    return-void
.end method
