.class public final synthetic Lcom/android/launcher3/touch/ItemClickHandler$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/Launcher;

.field public final synthetic f$1:Lcom/android/launcher3/model/data/WorkspaceItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/touch/ItemClickHandler$$ExternalSyntheticLambda3;->f$0:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/touch/ItemClickHandler$$ExternalSyntheticLambda3;->f$1:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/touch/ItemClickHandler$$ExternalSyntheticLambda3;->f$0:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/touch/ItemClickHandler$$ExternalSyntheticLambda3;->f$1:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {v0, v1, p1, p2}, Lcom/android/launcher3/touch/ItemClickHandler;->lambda$maybeCreateAlertDialogForShortcut$3(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/DialogInterface;I)V

    return-void
.end method
